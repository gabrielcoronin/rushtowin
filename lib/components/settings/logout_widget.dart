import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rushtowin/components/first_page/dashboard/dashboard.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              child: Text(
                  "SAIR DA CONTA".toUpperCase(),
                  style: const TextStyle(fontSize: 20)
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(),
                          side: BorderSide(color: Colors.white)
                      )
                  )
              ),
              onPressed: () =>
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ),
                  )
          ),
        ]
    );
  }
}
