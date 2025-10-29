// quiz_controller.dart
// Controlador que gestiona el estado y progreso del quiz final.

import 'package:flutter/foundation.dart';

class QuizController extends ChangeNotifier {
  int _currentQuestion = 0;

  int get currentQuestion => _currentQuestion;

  void nextQuestion() {
    _currentQuestion++;
    notifyListeners();
  }
}
