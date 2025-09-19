import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_skeleton/core/router/app_router.dart';
import 'package:riverpod_skeleton/core/services/coreServices.dart';
import 'package:riverpod_skeleton/core/theme/app_theme.dart';
import 'package:riverpod_skeleton/features/splashscreen/presentation/splashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Load env variables
  await dotenv.load(fileName: '.env');

  // Initialize SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  
  runApp(
    // Override the SharedPreferences provider with the instance we created
    ProviderScope(
      overrides: [
        sharedPreferenceProvider.overrideWithValue(prefs),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
