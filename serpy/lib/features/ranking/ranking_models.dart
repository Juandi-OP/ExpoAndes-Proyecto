// ranking_models.dart
// Modelos para representar entradas del ranking de jugadores.

class RankingEntry {
  const RankingEntry({required this.userId, required this.username, required this.xp});

  final String userId;
  final String username;
  final int xp;
}
