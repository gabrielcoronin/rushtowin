import 'package:flutter/material.dart';
import 'package:rushtowin/models/user.dart';
import 'package:rushtowin/models/wallet.dart';
import 'package:rushtowin/screens/settings/logout_widget.dart';
import 'package:rushtowin/screens/settings/profile_widget.dart';
import 'package:rushtowin/screens/settings/wallet_widget.dart';

class Settings extends StatefulWidget {
  final Wallet wallet;
  final User user;

  const Settings({Key? key, required this.wallet, required this.user}) : super(key: key);

  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Material(
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 72.0, 24.0, 72.0),
                  child: Material(
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      children: [
                        ProfileWidget(user: widget.user),
                        WalletWidget(user: widget.user),
                      ],
                    ),
                  ),
                ),
                const LogoutWidget(),
              ],
            ),
          ),
        ));
  }
}
