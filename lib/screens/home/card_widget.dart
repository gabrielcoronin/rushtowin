import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rushtowin/models/wallet.dart';
import 'package:rushtowin/screens/payment/payment.dart';
import 'package:rushtowin/screens/recharge/recharge.dart';
import 'package:rushtowin/screens/wallet/wallet.dart';

class CardWidget extends StatelessWidget {
  final Wallet wallet;

  const CardWidget({Key? key, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                      builder: (context) => Recharge(wallet: wallet),
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
                      builder: (context) => WalletScreen(wallet: wallet),
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
                      builder: (context) => Payment(wallet: wallet),
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
    );
  }
}
