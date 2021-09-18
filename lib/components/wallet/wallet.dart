import 'package:flutter/material.dart';
import 'package:rushtowin/components/settings/settings.dart';

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
                      padding: const EdgeInsets.all(16.0),
                      child: Material(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 150,
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'Saldo disponível',
                                style: TextStyle(
                                  color: Color.fromRGBO(17, 30, 108, 1),
                                  fontSize: 24.0,
                                ),
                              ),
                              Text(
                                'RS 500,00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Theme.of(context).primaryColor,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Settings(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            height: 100,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                  size: 45.0,
                                ),
                                Text(
                                  'Recarga',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                )
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
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: const Color.fromRGBO(0, 0, 0, 0.1),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Icon(
                                        Icons.format_list_bulleted,
                                        color: Color.fromRGBO(17, 30, 108, 1),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text(
                                        'Histórico de gastos',
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
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
                                width: 130,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      '20/03/2021',
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
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
                                width: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const <Widget>[
                                    Text(
                                      'às 11:30',
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 20.0,
                                      ),
                                    )
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
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
                    child: Material(
                      color: Colors.white,
                      child: Column(children: [
                        Row(
                          children: [
                            InkWell(
                              child: SizedBox(
                                height: 50,
                                width: 130,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const <Widget>[
                                    Text(
                                      '- RS 10,00',
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
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
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
