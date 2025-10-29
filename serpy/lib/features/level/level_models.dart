// level_models.dart
// Modelos para representar niveles y sublecciones.

class LevelModel {
  const LevelModel({required this.id, required this.title, required this.lessons});

  final String id;
  final String title;
  final List<SubLessonModel> lessons;
}

class SubLessonModel {
  const SubLessonModel({required this.id, required this.title});

  final String id;
  final String title;
}
