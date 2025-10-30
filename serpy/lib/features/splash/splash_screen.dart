// splash_screen.dart
// Pantalla de carga inicial que muestra el logotipo de Serpy y redirige al login.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../services/auth_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirectAfterDelay();
  }

  Future<void> _redirectAfterDelay() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    if (!mounted) return;

    final AuthService authService = context.read<AuthService>();
    final String targetRoute =
        authService.currentUser == null ? 'login' : 'worlds';
    context.goNamed(targetRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xFF73D2FF),
              Color(0xFF4BC0FF),
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/img app/Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/img app/logoPantallaCarga.png',
            width: 180,
          ),
        ),
      ),
    );
  }
}
