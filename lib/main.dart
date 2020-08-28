import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'circleview.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowingLogin = true;
  bool isShowingRegister = false;
  bool isShowingForgot = false;

  void changeView(bool isLogin, bool isRegister, bool forgotPassword) {
    setState(() {
      isShowingLogin = isLogin;
      isShowingRegister = isRegister;
      isShowingForgot = forgotPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.pink, Colors.deepOrange])),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Welcome To,",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Company Name",
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              flex: 2,
            ),
            Flexible(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 20,
                    left: -50,
                    child: CircleView(),
                  )
                ],
              ),
              flex: 4,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Some footer text",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    padding: EdgeInsets.only(bottom: 10),
                  )
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
