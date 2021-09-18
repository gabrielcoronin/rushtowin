import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rushtowin/components/first_page/dashboard/register_widget.dart';
import 'package:rushtowin/components/first_page/login/login.dart';
import 'package:rushtowin/components/first_page/register/register.dart';

import 'login_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('R2W'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                RegisterWidget(),
                LoginWidget(),
              ],
            ),
          ],
        ),
      );

  }
}
