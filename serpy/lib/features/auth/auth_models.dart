// auth_models.dart
// Modelos simples de usuario y estado de autenticación para la capa de UI.

class AuthUser {
  const AuthUser({required this.id, this.displayName});

  final String id;
  final String? displayName;
}
