import 'package:flutter/material.dart';
import 'package:rushtowin/components/first_page/login/login.dart';
import 'package:rushtowin/components/first_page/register/register.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            height: 150,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.login,
                  color: Colors.white,
                  size: 45.0,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
