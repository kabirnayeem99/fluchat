import 'package:flutter/material.dart';
import 'package:flash_chat/components/login_and_registration_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginAndRegistrationScreen(
        title: 'Registration',
        color: Colors.lightBlue,
      ),
    );
  }
}
