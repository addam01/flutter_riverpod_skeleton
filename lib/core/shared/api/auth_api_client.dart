import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_skeleton/features/auth/models/login_request.dart';
import 'package:riverpod_skeleton/features/auth/models/login_response.dart';

part 'auth_api_client.g.dart';

//Need to run dart run build_runner watch -d
// on a dedicated terminal
//build to generate retrofit instance .g classes

@RestApi()
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  @POST('/login')
  Future<LoginResponse> login(@Body() LoginRequest request);
}
