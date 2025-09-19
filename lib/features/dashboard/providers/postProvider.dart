

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_skeleton/core/services/coreServices.dart';
import 'package:riverpod_skeleton/features/dashboard/models/post_response.dart';

final postProvider = FutureProvider<List<PostResponse>>((ref) async{
  final apiClient = ref.watch(postApiClientProvider);
  return apiClient.getPosts();
});