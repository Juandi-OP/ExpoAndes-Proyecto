// progress_service.dart
// Servicio para gestionar el progreso del usuario dentro de Serpy.

class ProgressService {
  const ProgressService();

  Future<void> saveProgress(String userId, Map<String, dynamic> progress) async {
    // TODO: guardar el progreso en Firestore.
  }

  Future<void> loadProgress(String userId) async {
    // TODO: recuperar el progreso del usuario.
  }
}
