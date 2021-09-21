import 'package:uuid/uuid.dart';

class RechargeModel {
  final double value;
  final String walletId;

  RechargeModel({
    required this.value,
    required this.walletId,
  });

  factory RechargeModel.fromJson(Map<String, dynamic> json) {
    return RechargeModel(
      value: json['value'].toDouble(),
      walletId: json['walletId'],
    );
  }

  Map<String, dynamic> toJson() => {
        'value': value,
        'walletId': walletId,
      };

  @override
  String toString() {
    return 'Transaction{value: $value, walletId: $walletId}';
  }
}
