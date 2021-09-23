import 'package:flutter/material.dart';
import 'package:rushtowin/models/user.dart';
import 'balance_widget.dart';
import 'history_widget.dart';

class WalletScreen extends StatefulWidget {
  final User user;

  const WalletScreen({Key? key, required this.user}) : super(key: key);

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
            BalanceWidget(user: widget.user),
            HistoryWidget(wallet: widget.user.wallet,),
          ]),
        ));
  }
}
