// progress_bar.dart
// Barra de progreso simple para indicar avance del usuario.

import 'package:flutter/material.dart';

class SerpyProgressBar extends StatelessWidget {
  const SerpyProgressBar({super.key, required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(value: progress);
  }
}
