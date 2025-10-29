// profile_models.dart
// Modelos para representar la información del perfil del usuario.

class UserProfile {
  const UserProfile({required this.id, required this.username, required this.streak, required this.avatarUrl});

  final String id;
  final String username;
  final int streak;
  final String avatarUrl;
}
