import 'package:flutter/material.dart';
import 'package:rushtowin/http/webclients/transaction_webclient.dart';
import 'package:rushtowin/http/webclients/user_webclient.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/screens/home/wallet_widget.dart';
import 'card_widget.dart';
import 'header_widget.dart';
import 'history_widget.dart';

class Home extends StatefulWidget {
  final User user;

  const Home({Key? key, required this.user}) : super(key: key);

  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Material(
                color: const Color.fromRGBO(12, 21, 74, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    HeaderWidget(user: widget.user),
                    WalletWidget(user: widget.user,),
                    HistoryWidget(user: widget.user),
                    CardWidget(user: widget.user),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
