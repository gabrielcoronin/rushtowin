import 'package:flutter/material.dart';
import 'package:rushtowin/components/centered_message.dart';
import 'package:rushtowin/components/progress.dart';
import 'package:rushtowin/http/webclients/user_webclient.dart';
import 'package:rushtowin/models/update_user.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/models/user_register.dart';
import 'package:rushtowin/screens/first_page/dashboard/dashboard.dart';
import 'package:rushtowin/screens/home/home.dart';

class Profile extends StatefulWidget {
  final User user;

  const Profile({Key? key, required this.user}) : super(key: key);

  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<Profile> {
  final TextEditingController _passwordController = TextEditingController();
  final UserWebClient _webClient = UserWebClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
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
                            Icons.account_box,
                            color: Colors.white,
                            size: 72.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FutureBuilder<User>(
                  future: _webClient.get(widget.user.id),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        break;
                      case ConnectionState.waiting:
                        return Progress();
                      case ConnectionState.active:
                        break;
                      case ConnectionState.done:
                        if (snapshot.hasData) {
                          final User? user =
                              snapshot.data;
                          return TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                              labelText: "Nome: " + user!.fullName,
                            ),
                            style: const TextStyle(
                              fontSize: 24.0,
                            ),
                          );
                        }
                    }
                    return CenteredMessage(
                      'Unknown error',
                      icon: Icons.warning,
                    );
                  }),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child:
                FutureBuilder<User>(
                    future: _webClient.get(widget.user.id),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                          break;
                        case ConnectionState.waiting:
                          return Progress();
                        case ConnectionState.active:
                          break;
                        case ConnectionState.done:
                          if (snapshot.hasData) {
                            final User? user =
                                snapshot.data;
                            return TextField(
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: "CPF: " + user!.cpf,
                              ),
                              style: const TextStyle(
                                fontSize: 24.0,
                              ),
                            );
                          }
                      }
                      return CenteredMessage(
                        'Unknown error',
                        icon: Icons.warning,
                      );
                    }),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child:
                FutureBuilder<User>(
                    future: _webClient.get(widget.user.id),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                          break;
                        case ConnectionState.waiting:
                          return Progress();
                        case ConnectionState.active:
                          break;
                        case ConnectionState.done:
                          if (snapshot.hasData) {
                            final User? user =
                                snapshot.data;
                            return TextField(
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: user!.email,
                              ),
                              style: const TextStyle(
                                fontSize: 24.0,
                              ),
                            );
                          }
                      }
                      return CenteredMessage(
                        'Unknown error',
                        icon: Icons.warning,
                      );
                    }),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child:
                            TextField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: "Alterar senha: ",
                              ),
                              style: const TextStyle(
                                fontSize: 24.0,
                              ),
                              keyboardType: TextInputType.visiblePassword,
                            )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: const Text('Atualizar'),
                    onPressed: () {
                      final String password = _passwordController.text;
                      UpdateUser user = UpdateUser(id: widget.user.id, password: password);
                      _webClient.update(user);
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
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
