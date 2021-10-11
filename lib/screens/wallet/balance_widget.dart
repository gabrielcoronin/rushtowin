import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rushtowin/components/centered_message.dart';
import 'package:rushtowin/http/webclients/transaction_webclient.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/models/wallet.dart';
import 'package:rushtowin/screens/recharge/recharge.dart';

class BalanceWidget extends StatelessWidget {
  final User user;
  BalanceWidget({Key? key, required this.user}) : super(key: key);
  final TransactionWebClient _webClient = TransactionWebClient();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      children: <Widget>[
                        const Text(
                          'Saldo disponível',
                          style: TextStyle(
                            color: Color.fromRGBO(17, 30, 108, 1),
                            fontSize: 24.0,
                          ),
                        ),
                        FutureBuilder<Wallet>(
                            future: _webClient.getWallet(user.wallet.id),
                            builder: (context, snapshot) {
                              switch (snapshot.connectionState) {
                                case ConnectionState.none:
                                  break;
                                case ConnectionState.waiting:
                                  return const CircularProgressIndicator();
                                case ConnectionState.active:
                                  break;
                                case ConnectionState.done:
                                  if (snapshot.hasData) {
                                    final double balance =
                                        snapshot.data!.balance;
                                    return Text(
                                      'R\$ ' + balance.toString(),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 24.0,
                                      ),
                                    );
                                  }
                              }
                              return CenteredMessage(
                                'Unknown error',
                                icon: Icons.warning,
                              );
                            })
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
                          builder: (context) => Recharge(user: user),
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
    );
  }
}
