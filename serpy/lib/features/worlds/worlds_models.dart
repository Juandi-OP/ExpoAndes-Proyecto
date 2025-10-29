// worlds_models.dart
// Modelos relacionados con la representación de mundos y niveles.

class WorldModel {
  const WorldModel({required this.id, required this.name, required this.levelCount});

  final String id;
  final String name;
  final int levelCount;
}
