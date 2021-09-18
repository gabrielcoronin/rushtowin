import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rushtowin/components/settings/settings.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

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
    );
  }
}
