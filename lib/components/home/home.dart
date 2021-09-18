import 'package:flutter/material.dart';
import 'package:rushtowin/components/recharge/recharge.dart';
import 'package:rushtowin/components/settings/settings.dart';
import 'package:rushtowin/components/wallet/wallet.dart';


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
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.fromLTRB(24.0, 48.0, 0.0, 8.0),
                          child: Material(
                            color: const Color.fromRGBO(17, 30, 108, 0),
                            child: SizedBox(
                              height: 45,
                              width: 140,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Olá, Gabriel',
                                    style: TextStyle(
                                      color: Colors.white,
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
                            color: const Color.fromRGBO(17, 30, 108, 0),
                            child: Container(
                              padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 8.0),
                              height: 70,
                              width: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const Settings(),
                                        ),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.settings_sharp,
                                      color: Colors.white,
                                      size: 48.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
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
                                            children: const <Widget>[
                                              Text(
                                                'Gabriel Coronin',
                                                style: TextStyle(
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
                                            children: const <Widget>[
                                              Text(
                                                'RS 200,00',
                                                style: TextStyle(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 40.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Wallet(),
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
                                          width: 130,
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: const <Widget>[
                                              Text(
                                                '20/03/2021',
                                                style: TextStyle(
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
                                          width: 200,
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                            children: const <Widget>[
                                              Text(
                                                'às 11:30',
                                                style: TextStyle(
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
                                          width: 130,
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: const <Widget>[
                                              Text(
                                                '- RS 10,00',
                                                style: TextStyle(
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
                            )
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 126,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.fromLTRB(48.0, 8.0, 8.0, 16.0),
                            child: Material(
                              color: Theme.of(context).primaryColor,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Recharge(),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Theme.of(context).primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Theme.of(context).primaryColor,
                                          spreadRadius: 8),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const <Widget>[
                                      Icon(
                                        Icons.account_balance_wallet,
                                        color: Colors.white,
                                        size: 40.0,
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
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              color: Theme.of(context).primaryColor,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Wallet(),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Theme.of(context).primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Theme.of(context).primaryColor,
                                          spreadRadius: 8),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const <Widget>[
                                      Icon(
                                        Icons.account_balance_wallet_rounded,
                                        color: Colors.white,
                                        size: 40.0,
                                      ),
                                      Text(
                                        'Carteira',
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
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              color: Theme.of(context).primaryColor,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const Recharge(),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Theme.of(context).primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Theme.of(context).primaryColor,
                                          spreadRadius: 8),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const <Widget>[
                                      Icon(
                                        Icons.card_giftcard,
                                        color: Colors.white,
                                        size: 40.0,
                                      ),
                                      Text(
                                        'Pagar',
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
                    ),
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
