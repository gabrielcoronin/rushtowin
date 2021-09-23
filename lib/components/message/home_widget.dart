import 'package:flutter/material.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/screens/first_page/register/register.dart';
import 'package:rushtowin/screens/home/home.dart';

class HomeWidget extends StatelessWidget {
  final User user;
  const HomeWidget({Key? key, required this.user}) : super(key: key);

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
                builder: (context) => Home(user: user),
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
                  Icons.home,
                  color: Colors.white,
                  size: 45.0,
                ),
                Text(
                  'Home',
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
