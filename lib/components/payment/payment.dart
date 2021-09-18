import 'package:flutter/material.dart';
import 'package:rushtowin/components/wallet/wallet.dart';

import 'card_widget.dart';
import 'header_widget.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentFormState createState() => _PaymentFormState();
}

class _PaymentFormState extends State<Payment> {
  final TextEditingController _rechargeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagamento'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(children: const <Widget>[
          HeaderWidget(),
          CardWidget(),
        ]),
      ),
    );
  }
}
