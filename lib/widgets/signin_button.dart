import 'package:flutter/material.dart';
import 'package:time_tracker/widgets/reusable_button.dart';

class SignInButton extends ReusableButton {
  SignInButton({
    required String text,
    required Color buttonColor,
    required Color textColor,
    required Function onTap,
  }) : super(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
          ),
          buttonColor: buttonColor,
          onTap: onTap,
        );
}
