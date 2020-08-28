import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:logincircle/forgotPassword.dart';
import 'package:logincircle/loginView.dart';
import 'package:logincircle/register.dart';

class CircleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircularText(
          children: [
            TextItem(
              text: Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              space: 5,
              startAngle: -50,
              startAngleAlignment: StartAngleAlignment.center,
              direction: CircularTextDirection.clockwise,
            ),
            TextItem(
              text: Text(
                "Register",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              space: 4,
              startAngle: -15,
              startAngleAlignment: StartAngleAlignment.center,
              direction: CircularTextDirection.clockwise,
            ),
            TextItem(
              text: Text(
                "Forgot password",
                style:TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              space: 4,
              startAngle: 50,
              startAngleAlignment: StartAngleAlignment.center,
              direction: CircularTextDirection.clockwise,
            ),
          ],
          radius: 180,
          position: CircularTextPosition.outside,
          backgroundPaint: Paint()..color = Colors.grey.shade50,
        ),
        Positioned(
          top: 40,
          left: 60,
          right: 40,
          bottom: 40,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                LoginView(),
                /*RegisterView(),*/
                /*ForgotPassword()*/
              ],
            ),
          ),
        ),
      ],
    );
  }
}
