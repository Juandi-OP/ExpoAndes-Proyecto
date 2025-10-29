// lesson_card.dart
// Card reutilizable para mostrar información de una lección.

import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
