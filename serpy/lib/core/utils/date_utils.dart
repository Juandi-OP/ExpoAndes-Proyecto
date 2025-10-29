// date_utils.dart
// Utilidades para manejar fechas y calcular rachas del usuario.

class DateUtilsHelper {
  const DateUtilsHelper._();

  static bool isStreakMaintained(DateTime lastLogin, DateTime currentDate) {
    // TODO: implementar la lógica real de racha.
    return currentDate.difference(lastLogin).inDays <= 1;
  }
}
