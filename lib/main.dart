import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/screens/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
