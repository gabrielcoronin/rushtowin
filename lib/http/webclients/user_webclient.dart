import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/models/user_register.dart';
import 'package:uuid/uuid.dart';

class UserWebClient {

  Future<User> get(Uuid id) async {
    final response = await http.get(
        Uri.parse('http://192.168.5.185:8080/api/Users/$id'));

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    }
    throw Exception('Falha ao buscar usuário');
  }

  Future<User> login(String email, String password) async {
      final response = await http.get(
        Uri.parse('http://192.168.5.185:8080/api/Users/login/$email/$password'));

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    }
    throw Exception('Falha ao buscar usuário');
  }

  Future<UserRegister> save(UserRegister user) async {
    final String userJson = jsonEncode(user.toJson());
    await Future.delayed(const Duration(seconds: 2));

    final Response response = await http.post(
        Uri.parse('http://192.168.5.185:8080/api/Users'),
        headers: {
          'Content-type': 'application/json',
        },
        body: userJson);

    if (response.statusCode == 200) {
      return UserRegister.fromJson(jsonDecode(response.body));
    }
    throw Exception('Falha ao registrar usuário.');
  }

  Future<UserRegister> update(UserRegister user) async {
    final String userJson = jsonEncode(user.toJson());
    await Future.delayed(const Duration(seconds: 2));

    final Response response = await http.put(
        Uri.parse('http://192.168.5.185:8080/api/Users'),
        headers: {
          'Content-type': 'application/json',
        },
        body: userJson);

    if (response.statusCode == 200) {
      return UserRegister.fromJson(jsonDecode(response.body));
    }
    throw Exception('Falha ao atualizar usuário.');
  }
}
