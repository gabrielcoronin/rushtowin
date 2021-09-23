import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rushtowin/components/payment_message/dashboard.dart';
import 'package:rushtowin/http/webclients/transaction_webclient.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/screens/wallet/wallet.dart';

class CardWidget extends StatelessWidget {
  final User user;

  CardWidget({Key? key, required this.user}) : super(key: key);
  final TransactionWebClient _webClient = TransactionWebClient();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
                  child: TextButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Realizar pagamento:'),
                        content: const Text('Ônibus - R\$ 5,00'),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, 'Cancelar'),
                              child: const Text(
                                'Cancelar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                              )),
                          TextButton(
                            onPressed: () {
                              _verifyBalanceBus(context, 5.0);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      WalletScreen(user: user)));
                              Navigator.pop(context, 'Confirmar');
                            },
                            child: const Text(
                              'Confirmar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      height: 150,
                      width: 400,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(56.0, 0.0, 0.0, 0.0),
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
                            padding:
                                const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
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
            )
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
                  child: TextButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Realizar pagamento:'),
                        content: const Text('Metrô - R\$ 6,00'),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, 'Cancelar'),
                              child: const Text(
                                'Cancelar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                              )),
                          TextButton(
                            onPressed: () {
                              _verifyBalanceSubway(context, 6.0);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      WalletScreen(user: user)));
                              Navigator.pop(context, 'Confirmar');
                                      },
                            child: const Text(
                              'Confirmar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      height: 150,
                      width: 400,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(56.0, 0.0, 0.0, 0.0),
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
                            padding:
                                const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
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
            )
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
                  child: TextButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Realizar pagamento:'),
                        content: const Text('CPTM - R\$ 7,00'),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, 'Cancelar'),
                              child: const Text(
                                'Cancelar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                              )),
                          TextButton(
                            onPressed: () {
                              _verifyBalanceTrain(context, 7.0);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      WalletScreen(user: user)));
                              Navigator.pop(context, 'Confirmar');
                            },
                            child: const Text(
                              'Confirmar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      height: 150,
                      width: 400,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(56.0, 0.0, 0.0, 0.0),
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
                            padding:
                                const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
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
            )
          ],
        ),
      ),
    ]);
  }

  Future<dynamic> _verifyBalanceBus(BuildContext context, double value) async {
    var result = await _webClient.getWallet(user.walletId);
    user.wallet.balance = result.balance;
    if (result.balance >= value) {
      _webClient.bus(user.wallet.id);
      Navigator.pop(context, 'Confirmar');
      return Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              Dashboard(user: user, title: 'Pagamento efetuado.')));

    }
    return Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Dashboard(user: user, title: 'Saldo insuficiente.'),
    ));
  }

  Future<dynamic> _verifyBalanceSubway(BuildContext context, double value) async {
    var result = await _webClient.getWallet(user.walletId);
    if (result.balance >= value) {
      _webClient.subway(user.wallet.id);
      Navigator.pop(context, 'Confirmar');
      return Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              Dashboard(user: user, title: 'Pagamento efetuado.')));

    }
    return Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Dashboard(user: user, title: 'Saldo insuficiente.'),
    ));
  }

  Future<dynamic> _verifyBalanceTrain(BuildContext context, double value) async {
    var result = await _webClient.getWallet(user.walletId);
    if (result.balance >= value) {
      _webClient.train(user.wallet.id);
      Navigator.pop(context, 'Confirmar');
      return Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              Dashboard(user: user, title: 'Pagamento efetuado.')));

    }
    return Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Dashboard(user: user, title: 'Saldo insuficiente.'),
    ));
  }
}
