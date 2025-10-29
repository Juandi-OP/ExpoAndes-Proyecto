// ranking_controller.dart
// Controlador que obtiene y expone el top 5 de jugadores por XP.

import 'package:flutter/foundation.dart';

class RankingController extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> loadRanking() async {
    _isLoading = true;
    notifyListeners();
    // TODO: obtener ranking desde UserService.
    _isLoading = false;
    notifyListeners();
  }
}
