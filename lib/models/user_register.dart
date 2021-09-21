import 'package:rushtowin/models/wallet.dart';
import 'package:uuid/uuid.dart';

class UserRegister {
  final String fullName;
  final String cpf;
  final String email;
  final String password;

  UserRegister({required this.fullName, required this.cpf, required this.email, required this.password,});

  factory UserRegister.fromJson(Map<String, dynamic> json) {
    return UserRegister (
        fullName: json['fullName'],
        cpf: json['cpf'],
        email: json['email'],
        password: json['password']
    );
  }

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'cpf': cpf,
        'email': email,
        'password': password,
      };

  @override
  String toString() {
    return 'UserRegister{fullName: $fullName, cpf: $cpf, email: $email, password: $password}';
  }
}
