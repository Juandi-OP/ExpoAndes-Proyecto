// app.dart
// Configuración principal del MaterialApp.router con MultiProvider.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import 'router.dart';
import 'theme.dart';

class SerpyApp extends StatelessWidget {
  const SerpyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = createAppRouter();

    return MultiProvider(
      providers: const [],
      child: MaterialApp.router(
        title: 'Serpy',
        theme: buildSerpyTheme(),
        routerConfig: router,
      ),
    );
  }
}
