import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/screens/profile/profile.dart';

class ProfileWidget extends StatelessWidget {
  final User user;

  const ProfileWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: SizedBox(
            height: 100,
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Icon(
                  Icons.account_box,
                  color: Colors.white,
                  size: 56.0,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: SizedBox(
            height: 100,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Perfil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Profile(user: user),
              ),
            );
          },
          child: SizedBox(
            height: 50,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const <Widget>[
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 32.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
