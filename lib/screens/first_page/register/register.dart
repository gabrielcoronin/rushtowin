import 'package:flutter/material.dart';
import 'package:rushtowin/http/webclients/user_webclient.dart';
import 'package:rushtowin/models/user_register.dart';
import 'package:rushtowin/screens/first_page/login/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<Register> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final UserWebClient _webClient = UserWebClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre-se'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(72.0),
                child: Material(
                  color: Theme.of(context).primaryColor,
                  child: InkWell(
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.app_registration,
                            color: Colors.white,
                            size: 72.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              TextField(
                controller: _fullNameController,
                decoration: const InputDecoration(
                  labelText: 'Nome completo',
                ),
                style: const TextStyle(
                  fontSize: 24.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  controller: _cpfController,
                  decoration: const InputDecoration(
                    labelText: 'CPF',
                  ),
                  style: const TextStyle(
                    fontSize: 24.0,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                  ),
                  style: const TextStyle(
                    fontSize: 24.0,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                  ),
                  style: const TextStyle(
                    fontSize: 24.0,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: const Text('Registrar'),
                    onPressed: () {
                      final String fullName = _fullNameController.text;
                      final String cpf = _cpfController.text;
                      final String email = _emailController.text;
                      final String password = _passwordController.text;
                      final userCreated =
                          UserRegister(fullName: fullName, cpf: cpf, email: email, password: password);
                          _webClient.save(userCreated);
                      Navigator.push(context,
                          MaterialPageRoute(
                          builder: (context) => const Login(),
                      )
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
