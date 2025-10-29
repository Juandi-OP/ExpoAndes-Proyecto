// serpy_bottom_bar.dart
// Barra de navegación inferior común para la aplicación.

import 'package:flutter/material.dart';

class SerpyBottomBar extends StatelessWidget {
  const SerpyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Curso'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ],
    );
  }
}
