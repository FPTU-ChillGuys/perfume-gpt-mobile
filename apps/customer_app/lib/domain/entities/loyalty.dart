class LoyaltyTransaction {
  final String id;
  final int points;
  final String type; // Earn, Spend
  final String? description;
  final DateTime? createdAt;

  const LoyaltyTransaction({
    required this.id,
    required this.points,
    required this.type,
    this.description,
    this.createdAt,
  });
}

class LoyaltyTotal {
  final int totalPoints;
  final int earnedPoints;
  final int redeemedPoints;

  const LoyaltyTotal({
    required this.totalPoints,
    required this.earnedPoints,
    required this.redeemedPoints,
  });
}
