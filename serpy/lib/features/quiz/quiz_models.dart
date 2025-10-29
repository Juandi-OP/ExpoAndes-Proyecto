// quiz_models.dart
// Modelos para representar preguntas y respuestas del quiz.

class QuizQuestion {
  const QuizQuestion({required this.id, required this.question, required this.answers});

  final String id;
  final String question;
  final List<QuizAnswer> answers;
}

class QuizAnswer {
  const QuizAnswer({required this.id, required this.label, required this.isCorrect});

  final String id;
  final String label;
  final bool isCorrect;
}
