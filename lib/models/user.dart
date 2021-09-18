class User {
  final String fullName;
  final int cpf;
  final String email;
  final String password;

  User(
      this.fullName,
      this.cpf,
      this.email,
      this.password,
      );

  @override
  String toString() {
    return 'User{fullName: $fullName, CPF: $cpf, email: $email, password: $password}';
  }
}
