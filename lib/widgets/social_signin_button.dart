import 'package:flutter/material.dart';
import 'package:time_tracker/widgets/reusable_button.dart';

class SocialSignInButton extends ReusableButton {
  SocialSignInButton({
    required String text,
    required String assetName,
    required Color buttonColor,
    required Color textColor,
    required Function onTap,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(assetName),
              ),
            ],
          ),
          buttonColor: buttonColor,
          onTap: onTap,
        );
}
