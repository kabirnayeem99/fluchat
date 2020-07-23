import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWelcome extends StatelessWidget {
  ButtonWelcome({this.buttonText, this.pageNav});

  String buttonText;
  var pageNav;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            //Go to login screen.
            Navigator.pushNamed(
              context,
              pageNav,
            );
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            '$buttonText',
          ),
        ),
      ),
    );
  }
}
// Padding(
//   padding: EdgeInsets.symmetric(vertical: 16.0),
//   child: Material(
//     color: Colors.blueAccent,
//     borderRadius: BorderRadius.circular(30.0),
//     elevation: 5.0,
//     child: MaterialButton(
//       onPressed: () {
//         //Go to registration screen.
//         Navigator.pushNamed(
//           context,
//           RegistrationScreen.id,
//         );
//       },
//       minWidth: 200.0,
//       height: 42.0,
//       child: Text(
//         'Register',
//       ),
//     ),
//   ),
// ),
