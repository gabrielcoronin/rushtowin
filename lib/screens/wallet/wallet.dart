import 'package:flutter/material.dart';
import 'package:rushtowin/models/wallet.dart';

import 'balance_widget.dart';
import 'history_widget.dart';

class WalletScreen extends StatefulWidget {
  final Wallet wallet;

  const WalletScreen({Key? key, required this.wallet}) : super(key: key);

  @override
  _WalletFormState createState() => _WalletFormState();
}

class _WalletFormState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Carteira'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            BalanceWidget(wallet: widget.wallet),
            HistoryWidget(wallet: widget.wallet,),
          ]),
        ));
  }
}
