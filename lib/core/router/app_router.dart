import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_skeleton/features/auth/presentation/loginScreen.dart';
import 'package:riverpod_skeleton/features/auth/providers/authNotifier.dart';
import 'package:riverpod_skeleton/features/dashboard/presentation/dashboardScreen.dart';
import 'package:riverpod_skeleton/features/splashscreen/presentation/splashScreen.dart';

// This provider exposes the GoRouter configuration and rebuilds when authentication status changes.
final routerProvider = Provider<GoRouter>((ref) {
  final routerNotifier = ref.watch(routerNotifierProvider.notifier);

  return GoRouter(
    refreshListenable: routerNotifier,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/dashboard',
        name: 'dashboard',
        builder: (context, state) => const DashboardScreen(),
      ),
    ],
    // The redirect logic handles all authentication-related navigation.
    redirect: (BuildContext context, GoRouterState state) {
      final isAuthenticated = routerNotifier.isAuthenticated;
      final isLoggingIn = state.uri.toString() == '/login';
      final isSplashScreen = state.uri.toString() == '/';

      // If the user is not authenticated and they're not on the login page, redirect them.
      if (!isAuthenticated && !isLoggingIn) {
        return '/login';
      }

      // If the user is authenticated and they're on the login or splash screen, redirect them to the dashboard.
      if (isAuthenticated && (isLoggingIn || isSplashScreen)) {
        return '/dashboard';
      }
      
      // No redirection is needed.
      return null;
    },
  );
});

// A provider that listens to the authentication state and notifies GoRouter to refresh.
final routerNotifierProvider = ChangeNotifierProvider<RouterNotifier>((ref) {
  return RouterNotifier(ref);
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;
  bool _isAuthenticated = false;

  RouterNotifier(this._ref) {
    // We listen to the isAuthenticatedProvider from core_services and update our internal state.
    _isAuthenticated = _ref.read(isAuthenticatedProvider);
    _ref.listen<bool>(isAuthenticatedProvider, (previous, next) {
      if (previous != next) {
        _isAuthenticated = next;
        // This is the key step: we notify GoRouter to re-evaluate the redirect.
        notifyListeners();
      }
    });
  }

  bool get isAuthenticated => _isAuthenticated;
}
