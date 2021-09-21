
class Wallet {
  final String id;
  late double balance;

  Wallet({required this.id, required this.balance});

  factory Wallet.fromJson(Map<String, dynamic> json) {
    return Wallet(
      id: json['id'],
      balance: json['balance'].toDouble(),
    );
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'balance': balance,
      };

  @override
  String toString() {
    return 'Wallet{id: $id, balance: $balance}';
  }
}
