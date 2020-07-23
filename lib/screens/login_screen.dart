import 'package:flutter/material.dart';
import 'package:flash_chat/services/login_and_registration_screen.dart';

AnimationController controller;

class LoginScreen extends StatefulWidget {
  static const id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginAndRegistrationScreen(
        screenName: 'Log In',
      ),
    );
  }
}
