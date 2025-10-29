// auth_controller.dart
// ChangeNotifier que maneja el estado de autenticación y las acciones de login/logout.

import 'package:flutter/foundation.dart';

class AuthController extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> login() async {
    _isLoading = true;
    notifyListeners();
    // TODO: invocar AuthService.
    _isLoading = false;
    notifyListeners();
  }

  Future<void> logout() async {
    // TODO: cerrar sesión con AuthService.
  }
}
