import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginAndRegistrationScreen extends StatelessWidget {
  LoginAndRegistrationScreen({
    Key key,
    @required this.title,
    @required this.color,
  });

  String title;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Hero(
            tag: 'logo',
            child: Container(
              height: 200.0,
              child: Image.asset('images/logo.png'),
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          TextField(
            onChanged: (value) {
              //Do something with the user input.
            },
            decoration: kTextFieldDecoration.copyWith(
              hintText: "Enter your email.",
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          TextField(
            onChanged: (value) {
              //Do something with the user input.
            },
            decoration: kTextFieldDecoration.copyWith(
              hintText: "Enter your password.",
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          RoundedButton(
            color: color,
            onPressed: () {},
            title: title,
          ),
        ],
      ),
    );
  }
}
