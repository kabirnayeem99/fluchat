import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';

AnimationController controller;
Animation animation;

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    animation = ColorTween(
      begin: Colors.purple,
      end: Colors.white,
    ).animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child: Hero(
                      tag: 'logo',
                      child: Container(
                        child: Image.asset('images/logo.png'),
                        height: 60.0,
                      ),
                    ),
                  ),
                  TypewriterAnimatedTextKit(
                    onTap: () => {},
                    text: ['Flash Chat'],
                    textStyle: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                    ),

                    // textAlign: TextAlign.start,
                    // alignment: AlignmentDirectional.topStart,
                  ),
                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              new RoundedButton(
                title: "Log In",
                color: Colors.deepPurpleAccent,
                onPressed: () {
                  //Go to login screen.
                  Navigator.pushNamed(
                    context,
                    LoginScreen.id,
                  );
                },
              ),
              new RoundedButton(
                title: "Registration",
                onPressed: () {
                  //Go to login screen.
                  Navigator.pushNamed(
                    context,
                    RegistrationScreen.id,
                  );
                },
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
