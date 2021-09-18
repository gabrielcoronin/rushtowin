import 'package:flutter/material.dart';
import 'package:rushtowin/components/home/wallet_widget.dart';
import 'card_widget.dart';
import 'header_widget.dart';
import 'history_widget.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

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
                  children: const <Widget>[
                    HeaderWidget(),
                    WalletWidget(),
                    HistoryWidget(),
                    CardWidget(),
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
