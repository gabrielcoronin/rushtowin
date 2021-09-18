import 'package:flutter/material.dart';
import 'package:rushtowin/components/recharge/recharge.dart';

import 'balance_widget.dart';
import 'history_widget.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletFormState createState() => _WalletFormState();
}

class _WalletFormState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Carteira'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(children: const <Widget>[
          BalanceWidget(),
          HistoryWidget(),
        ]));
  }
}
