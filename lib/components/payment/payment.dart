import 'package:flutter/material.dart';
import 'package:rushtowin/components/wallet/wallet.dart';

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
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                'Minha área Pagamento',
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
                                  Icons.card_giftcard_sharp,
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                        padding: const EdgeInsets.all(40.0),
                        height: 150,
                        width: 400,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  56.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(
                                    Icons.directions_bus,
                                    color: Colors.white,
                                    size: 56.0,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  40.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    'Ônibus',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                        padding: const EdgeInsets.all(40.0),
                        height: 150,
                        width: 400,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  56.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(
                                    Icons.directions_train,
                                    color: Colors.white,
                                    size: 56.0,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  40.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    'Metrô',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                        padding: const EdgeInsets.all(40.0),
                        height: 150,
                        width: 400,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  56.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(
                                    Icons.train,
                                    color: Colors.white,
                                    size: 56.0,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  40.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    'CPTM',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
