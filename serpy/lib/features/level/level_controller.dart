// level_controller.dart
// Controlador encargado de gestionar el estado de las sublecciones de un nivel.

import 'package:flutter/foundation.dart';

class LevelController extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> loadLevel(String levelId) async {
    _isLoading = true;
    notifyListeners();
    // TODO: cargar sublecciones del nivel.
    _isLoading = false;
    notifyListeners();
  }
}
