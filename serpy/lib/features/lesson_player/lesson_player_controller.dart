// lesson_player_controller.dart
// Controlador que maneja el estado del reproductor de lecciones.

import 'package:flutter/foundation.dart';

class LessonPlayerController extends ChangeNotifier {
  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;

  void togglePlay() {
    _isPlaying = !_isPlaying;
    notifyListeners();
  }
}
