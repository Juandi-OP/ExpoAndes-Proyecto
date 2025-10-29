// theme.dart
// Temas globales de la aplicación, colores y tipografías.

import 'package:flutter/material.dart';

ThemeData buildSerpyTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4CAF50)),
    useMaterial3: true,
  );
}
