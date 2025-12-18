import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_skeleton/features/auth/providers/authNotifier.dart';
import 'package:riverpod_skeleton/features/dashboard/models/post_response.dart';
import 'package:riverpod_skeleton/features/dashboard/providers/postProvider.dart';
import 'package:riverpod_skeleton/resources/resource_helper.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // Watch the postsProvider to get the list of posts.
    final postsAsyncValue = ref.watch(postProvider);

    return _buildDashboardScaffold(context, ref, postsAsyncValue);
  }

  Widget _buildDashboardScaffold(
    BuildContext context,
    WidgetRef ref,
    AsyncValue<List<PostResponse>> postsAsyncValue,
  ) {
    return Scaffold(
      appBar: AppBar(title: Text(R.string.screen_dashboard_title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome! You are logged in.'),
            const SizedBox(height: 20),
            // Use AsyncValue.when to handle different states of the API call.
            postsAsyncValue.when(
              data: (posts) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final post = posts[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(title: Text(post.title)),
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error:
                  (error, stack) => Center(
                    child: Text(
                      R.string.error_generic(error),
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(authProvider.notifier).logout();
              },
              child: Text(R.string.text_logout),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Invalidate the postsProvider to trigger a re-fetch of data
          ref.invalidate(postProvider);
        },
        tooltip: R.string.text_refresh,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
