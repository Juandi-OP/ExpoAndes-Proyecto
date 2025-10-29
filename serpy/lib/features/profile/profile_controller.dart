// profile_controller.dart
// Controlador responsable de manejar el estado del perfil del usuario.

import 'package:flutter/foundation.dart';

class ProfileController extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> loadProfile(String userId) async {
    _isLoading = true;
    notifyListeners();
    // TODO: obtener datos del perfil del usuario.
    _isLoading = false;
    notifyListeners();
  }
}
