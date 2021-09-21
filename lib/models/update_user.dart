class UpdateUser {
  final String id;
  final String password;

  UpdateUser({required this.id, required this.password});

  factory UpdateUser.fromJson(Map<String, dynamic> json) {
    return UpdateUser(
        id: json['id'],
        password: json['password'],
    );
  }
  Map<String, dynamic> toJson() =>
      {
        'id' : id,
        'password' : password,
      };

  @override
  String toString() {
    return 'UpdateUser{id: $id, password: $password}';
  }
}