import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rushtowin/components/centered_message.dart';
import 'package:rushtowin/components/progress.dart';
import 'package:rushtowin/http/webclients/transaction_webclient.dart';
import 'package:rushtowin/models/transaction.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/models/wallet.dart';
import 'package:rushtowin/screens/wallet/wallet.dart';

class HistoryWidget extends StatelessWidget {
  final User user;

  HistoryWidget({Key? key, required this.user}) : super(key: key);
  final TransactionWebClient _webClient = TransactionWebClient();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 40.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => WalletScreen(user: user),
            ),
          );
        },
        child: Material(
          color: Colors.white,
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: const Color.fromRGBO(0, 0, 0, 0.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 60,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: const <Widget>[
                              Icon(
                                Icons.format_list_bulleted,
                                color: Color.fromRGBO(
                                    17, 30, 108, 1),
                                size: 48.0,
                              ),
                            ],
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
                                  'Histórico de gastos',
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
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: const Color.fromRGBO(0, 0, 0, 0.0),
                child: Column(children: [
                  Row(
                    children: [
                      InkWell(
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: <Widget>[
                              FutureBuilder<Transaction>(
                                  future: _webClient.getLastTransaction(user.wallet.id),
                                  builder: (context, snapshot) {
                                    switch (snapshot.connectionState) {
                                      case ConnectionState.none:
                                        break;
                                      case ConnectionState.waiting:
                                        return Progress();
                                      case ConnectionState.active:
                                        break;
                                      case ConnectionState.done:
                                        if (snapshot.hasData) {
                                          final Transaction? transaction =
                                              snapshot.data;
                                          return Text(
                                            DateFormat().format(transaction!.createdAt).toString(),
                                            style: const TextStyle(
                                              color:
                                              Color.fromRGBO(0, 0, 0, 1),
                                              fontSize: 16.0,
                                            ),
                                          );
                                        }
                                    }
                                    return CenteredMessage(
                                      'Unknown error',
                                      icon: Icons.warning,
                                    );
                                  }),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  16.0, 16.0, 16.0, 24.0),
              child: Material(
                color: Colors.white,
                child: Column(children: [
                  Row(
                    children: [
                      InkWell(
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.end,
                            children: <Widget>[
                              FutureBuilder<Transaction>(
                                  future: _webClient.getLastTransaction(user.wallet.id),
                                  builder: (context, snapshot) {
                                    switch (snapshot.connectionState) {
                                      case ConnectionState.none:
                                        break;
                                      case ConnectionState.waiting:
                                        return Progress();
                                      case ConnectionState.active:
                                        break;
                                      case ConnectionState.done:
                                        if (snapshot.hasData) {
                                          final Transaction? transaction =
                                              snapshot.data;
                                          return Text(
                                             "- " + transaction!.value.toString(),
                                            style: const TextStyle(
                                              color:
                                              Color.fromRGBO(0, 0, 0, 1),
                                              fontSize: 24.0,
                                            ),
                                          );
                                        }
                                    }
                                    return CenteredMessage(
                                      'Unknown error',
                                      icon: Icons.warning,
                                    );
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
