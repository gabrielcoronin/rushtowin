import 'package:flutter/material.dart';
import 'package:rushtowin/screens/first_page/dashboard/dashboard.dart';

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
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent[700]),
      ),
      home: const Dashboard(),
    );
  }


}
