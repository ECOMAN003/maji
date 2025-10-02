import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:maji/screens/home_screen.dart';
import 'package:maji/screens/onboarding_screen.dart';
import 'package:maji/theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: MajiApp(),),);
}

class MajiApp extends ConsumerWidget {
  const MajiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter(
      initialLocation: '/onboarding',
      routes: <GoRoute>[
        GoRoute(
          path: '/onboarding',
          builder: (context, state) => OnboardingScreen(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => HomeScreen(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Maji App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}

