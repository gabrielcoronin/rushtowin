import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rushtowin/models/wallet.dart';
import 'package:rushtowin/screens/settings/settings.dart';

class HeaderWidget extends StatelessWidget {
  final Wallet wallet;
  final String fullName;

  const HeaderWidget({Key? key, required this.fullName, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Olá, $fullName',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
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
              width: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Settings(wallet: wallet),
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
    );
  }
}
