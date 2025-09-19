import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_skeleton/core/shared/models/token_request.dart';
import 'package:riverpod_skeleton/core/shared/models/token_response.dart';

part 'auth_token.g.dart';

//Need to run dart run build_runner watch -d
// on a dedicated terminal
//build to generate retrofit instance .g classes

@RestApi()
abstract class AuthToken {
  factory AuthToken(Dio dio, {String baseUrl}) = _AuthToken;

  @POST('/token')
  Future<TokenResponse> token(@Body() TokenRequest request);
}
