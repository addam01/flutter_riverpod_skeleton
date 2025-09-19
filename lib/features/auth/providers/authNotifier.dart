

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_skeleton/core/services/coreServices.dart';
import 'package:riverpod_skeleton/core/services/userSessionService.dart';
import 'package:riverpod_skeleton/features/auth/models/login_response.dart';

class AuthNotifier extends StateNotifier<AsyncValue<void>> {

  final Dio dio;
  final UserSessionService userSessionService;
  final Ref ref;

  AuthNotifier({required this.dio, required this.userSessionService, required this.ref})
    :super (const AsyncData(null));
  
  Future<void> login(String email, String password) async {
    state = const AsyncLoading();
    try {
      final response = await dio.get(
        '/login', // Replace with your login endpoint
        // data: {
        //   'email': email,
        //   'password': password,
        // },
      );
      final loginResponse = LoginResponse.fromJson(response.data);
      await userSessionService.saveToken(loginResponse.token);
      state = const AsyncData(null);
      // Explicitly update the isAuthenticatedProvider after a successful login
      ref.read(isAuthenticatedProvider.notifier).state = true;
    } catch (e, st) {
      if (e is DioException && e.response?.statusCode == 401) {
        state = AsyncError('Invalid credentials', st);
      } else {
        // Now handles DioError and FormatException from the model.
        state = AsyncError(e.toString(), st);
      }
    }
  }

  Future<void> logout() async {
    state = const AsyncLoading();
    await userSessionService.clearToken();
    state = const AsyncData(null);
    // Explicitly update the isAuthenticatedProvider after a successful logout
    ref.read(isAuthenticatedProvider.notifier).state = false;
  }
}

// A provider that exposes our AuthNotifier.
final authProvider = StateNotifierProvider<AuthNotifier, AsyncValue<void>>((ref) {
  final dio = ref.watch(dioProvider);
  final userSessionService = ref.watch(userSessionServiceProvider);
  // Pass the ref to the notifier so it can invalidate other providers.
  return AuthNotifier(dio: dio, userSessionService: userSessionService, ref: ref);
});

// The auth status provider is a FutureProvider that checks if the user is authenticated.
final authStatusProvider = FutureProvider<bool>((ref) async {
  final userSessionService = ref.watch(userSessionServiceProvider);
  final token = userSessionService.getToken();
  // Simulate a network delay for the splash screen.
  await Future.delayed(const Duration(seconds: 1));
  logger.d('Checking authentication status. Token exists: ${token != null}');
  return token != null;
});

// A simple provider to hold the authenticated status.
final isAuthenticatedProvider = StateProvider<bool>((ref) {
  return ref.watch(userSessionServiceProvider).getToken() != null;
});