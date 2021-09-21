import 'package:rushtowin/models/wallet.dart';
import 'package:uuid/uuid.dart';

class Transaction {
  final String id;
  final double value;
  final DateTime createdAt;
  final Wallet wallet;

  Transaction({
    required this.id,
    required this.value,
    required this.createdAt,
    required this.wallet,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
        id: json['id'],
        value: json['value'].toDouble(),
        createdAt: DateTime.parse(json['createdAt']),
        wallet: Wallet.fromJson(
          json['wallet'],
        ));
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'value': value,
        'createdAt': createdAt,
        'wallet': wallet.toJson(),
      };

  @override
  String toString() {
    return 'Transaction{id: $id, value: $value, createdAt: $createdAt, wallet: $wallet}';
  }
}
