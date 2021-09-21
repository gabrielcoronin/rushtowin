import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rushtowin/models/wallet.dart';

class WalletWidget extends StatelessWidget {
  final String fullName;
  final Wallet wallet;

  const WalletWidget({Key? key, required this.fullName, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                color: const Color.fromRGBO(0, 0, 0, 0.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          child: SizedBox(
                            height: 100,
                            width: 60,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: const <Widget>[
                                Icon(
                                  Icons.account_balance_wallet,
                                  color: Color.fromRGBO(
                                      17, 30, 108, 1),
                                  size: 48.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          child: SizedBox(
                            height: 100,
                            width: 200,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Carteira',
                                  style: TextStyle(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 1),
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.fromLTRB(24.0, 0.0, 0.0, 16.0),
              child: Material(
                color: const Color.fromRGBO(0, 0, 0, 0.0),
                child: Column(children: [
                  Row(
                    children: [
                      InkWell(
                        child: SizedBox(
                          height: 70,
                          width: 200,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                fullName,
                                style: const TextStyle(
                                  color:
                                  Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        child: SizedBox(
                          height: 50,
                          width: 100,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                wallet.balance.toString(),
                                style: const TextStyle(
                                  color:
                                  Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
