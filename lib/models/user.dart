import 'package:rushtowin/models/wallet.dart';

class User {
  final String id;
  final String fullName;
  final String cpf;
  final String email;
  final String password;
  final String walletId;
  final Wallet wallet;

  User({required this.id, required this.fullName, required this.cpf, required this.email, required this.password,
    required this.walletId, required this.wallet,});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        fullName: json['fullName'],
        cpf: json['cpf'],
        email: json['email'],
        password: json['password'],
        walletId: json['walletId'],
        wallet: Wallet.fromJson(json['wallet'])
    );
  }
  Map<String, dynamic> toJson() =>
      {
        'id' : id,
        'fullName' : fullName,
        'cpf' : cpf,
        'email' : email,
        'password' : password,
        'walletId' : walletId,
        'wallet': wallet.toJson(),
      };

  @override
  String toString() {
    return 'User{id: $id, fullName: $fullName, cpf: $cpf, email: $email, password: $password, walletId: $walletId, wallet: $wallet}';
  }
}
