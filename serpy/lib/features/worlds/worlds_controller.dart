// worlds_controller.dart
// Controlador para cargar y exponer la lista de niveles disponibles en los mundos.

import 'package:flutter/foundation.dart';

class WorldsController extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> loadWorlds() async {
    _isLoading = true;
    notifyListeners();
    // TODO: cargar mundos desde el servicio correspondiente.
    _isLoading = false;
    notifyListeners();
  }
}
