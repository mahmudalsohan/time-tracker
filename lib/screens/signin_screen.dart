import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/widgets/signin_button.dart';
import 'package:time_tracker/widgets/social_signin_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Track Your Time'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            SocialSignInButton(
              text: 'SignIn with Google',
              assetName: 'images/google-logo.png',
              buttonColor: Colors.white,
              textColor: Colors.black87,
              onTap: () {
                print('pressed');
              },
            ),
            SizedBox(height: 20),
            SocialSignInButton(
              text: 'SignIn with Facebook',
              assetName: 'images/facebook-logo.png',
              buttonColor: Color(0xFF334D92),
              textColor: Colors.white,
              onTap: () {},
            ),
            SizedBox(height: 20),
            SignInButton(
              text: 'SignIn with Email',
              buttonColor: Colors.teal,
              textColor: Colors.white,
              onTap: () {},
            ),
            SizedBox(height: 10),
            Text(
              'or',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SignInButton(
              text: 'SignIn Anonymously',
              buttonColor: Colors.black,
              textColor: Colors.white,
              onTap: () async {
                try {
                  final userCredentials =
                      await FirebaseAuth.instance.signInAnonymously();
                  print(userCredentials.user!.uid);
                } catch (e) {
                  print(e.toString());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
