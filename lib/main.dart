import 'package:flutter/material.dart';
import 'package:time_tracker/screens/signin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey.shade900,
      ),
      home: SignInScreen(),
    );
  }
}
