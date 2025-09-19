
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_skeleton/core/services/authInterceptor.dart';
import 'package:riverpod_skeleton/core/services/userSessionService.dart';
import 'package:riverpod_skeleton/core/shared/api/auth_api_client.dart';
import 'package:riverpod_skeleton/core/shared/api/post_api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';

final dioProvider = Provider((ref) {
  //Load URL from .env file
  final baseUrl = dotenv.env['BASE_URL'] ?? 'http:://sample.com';
  final dio =  Dio(BaseOptions(baseUrl: baseUrl));

  // Add the LogInterceptor to Dio's list of interceptors
  dio.interceptors.add(
    PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      )
  );

  // Add the authentication interceptor.
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      final userSessionService = ref.read(userSessionServiceProvider);
      final token = userSessionService.getToken();
      if (token != null) {
        // Add the Authorization header to all requests.
        options.headers['Authorization'] = 'Bearer $token';
      }
      return handler.next(options);
    },
    onError: (DioException error, handler) async {
      if (error.response?.statusCode == 401) {
        // Use the new, separate function to handle the 401 error.
        // This function will use a separate Dio instance that does not
        // have this interceptor, thereby avoiding a logical loop.
        return handle401Error(error, handler, dio, ref);
      }
      return handler.next(error);
    },
  ));
  
  return dio;
});

// A provider for the Retrofit authentication API client.
final authApiClientProvider = Provider<AuthApiClient>((ref) {
  final dio = ref.watch(dioProvider);
  return AuthApiClient(dio);
});

// A provider for the Retrofit Post API client.
final postApiClientProvider = Provider<PostApiClient>((ref) {
  final dio = ref.watch(dioProvider);
  return PostApiClient(dio);
});

final sharedPreferenceProvider = Provider<SharedPreferences>((ref){
  throw UnimplementedError();
});

final logger = Logger();