import 'package:flutter/material.dart';
import 'package:rushtowin/components/first_page/dashboard/dashboard.dart';

void main() {
  runApp(const RushToWinApp());
}

class RushToWinApp extends StatelessWidget {
  const RushToWinApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(17, 30, 108, 1),
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const Dashboard(),
    );
  }
}
