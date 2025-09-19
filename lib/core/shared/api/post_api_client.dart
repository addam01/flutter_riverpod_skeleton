import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_skeleton/features/dashboard/models/post_response.dart';

part 'post_api_client.g.dart';

@RestApi()
abstract class PostApiClient {
  factory PostApiClient(Dio dio, {String baseUrl}) = _PostApiClient;

  @GET('/posts')
  Future<List<PostResponse>> getPosts();
}
