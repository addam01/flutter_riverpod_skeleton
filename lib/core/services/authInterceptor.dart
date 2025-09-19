

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_skeleton/core/services/userSessionService.dart';
import 'package:riverpod_skeleton/core/shared/models/token_request.dart';
import 'package:riverpod_skeleton/core/shared/models/token_response.dart';
import 'package:riverpod_skeleton/features/auth/providers/authNotifier.dart';

final _refreshDio = Dio(BaseOptions(baseUrl: dotenv.env['BASE_URL']!));

/// A function to handle token refresh logic on 401 errors.
/// It takes the DioError and a Dio instance to retry the request.
Future<void> handle401Error(DioException error, ErrorInterceptorHandler handler, Dio dio, Ref ref) async {
  final userSessionService = ref.read(userSessionServiceProvider);
  final oldRefreshToken = userSessionService.getRefreshToken();
  
  // If a refresh token exists, try to refresh.
  if (oldRefreshToken != null) {
    try {
      // Send the refresh request using a separate Dio instance.
      final response = await _refreshDio.post(
        '/token',
        data: TokenRequest(token: oldRefreshToken),
      );
      final refreshTokenResponse = TokenResponse.fromJson(response.data);
      
      // Update the tokens in your user session service.
      await userSessionService.saveToken(refreshTokenResponse.token);
      await userSessionService.saveRefreshToken(refreshTokenResponse.refreshToken);

      // Retry the original request with the new token.
      final newAccessToken = userSessionService.getToken();
      error.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
      
      return handler.resolve(await dio.fetch(error.requestOptions));
    } on DioException catch (e) {
      // If refresh token fails, clear all tokens and redirect to login.
      await userSessionService.clearToken();
      await userSessionService.clearRefreshToken();
      ref.read(isAuthenticatedProvider.notifier).state = false;
      return handler.next(e);
    }
  }
  return handler.next(error);
}