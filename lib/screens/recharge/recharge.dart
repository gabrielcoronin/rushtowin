import 'package:flutter/material.dart';
import 'package:rushtowin/http/webclients/transaction_webclient.dart';
import 'package:rushtowin/models/recharge_model.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/screens/home/home.dart';

class Recharge extends StatefulWidget {
  final User user;

  const Recharge({Key? key, required this.user}) : super(key: key);

  @override
  _RechargeFormState createState() => _RechargeFormState();
}

class _RechargeFormState extends State<Recharge> {
  final TextEditingController _rechargeController = TextEditingController();
  final TransactionWebClient _webClient = TransactionWebClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Recarga'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 80.0, 8.0, 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
                      child: Material(
                        child: SizedBox(
                          height: 150,
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'Minha área Recarga',
                                style: TextStyle(
                                  color: Color.fromRGBO(17, 30, 108, 1),
                                  fontSize: 24.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Material(
                        child: InkWell(
                          child: Container(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                            height: 100,
                            width: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Icon(
                                  Icons.account_balance_wallet_rounded,
                                  color: Color.fromRGBO(17, 30, 108, 1),
                                  size: 45.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 8.0, 16.0, 8.0),
            child: TextField(
              controller: _rechargeController,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.savings,
                  color: Color.fromRGBO(17, 30, 108, 1),
                  size: 56.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              style: const TextStyle(
                fontSize: 24.0,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                  child:
                      const Text("Recarregar", style: TextStyle(fontSize: 16)),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(17, 30, 108, 1)),
                  ),
                  onPressed: () async {
                    final String value = _rechargeController.text;
                    final recharge = RechargeModel(
                        value: double.parse(value), walletId: widget.user.wallet.id);
                    var result = await _webClient.recharge(recharge);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(user: widget.user),
                    ));
                  })
            ]),
          )
        ]));
  }
}
