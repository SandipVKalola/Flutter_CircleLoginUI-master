import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Forgot Password",
          style: TextStyle(
              color: Colors.pink, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
            "To reset your password, enter your registered email, Press the button and check your mail."),
        SizedBox(
          height: 15,
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(20.0),
              bottomLeft: const Radius.circular(20.0),
              topRight: const Radius.circular(20.0),
              bottomRight: const Radius.circular(20.0),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Your registered email",
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 150,
          child: RaisedButton(
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(30.0),
                bottomLeft: const Radius.circular(30.0),
                topRight: const Radius.circular(30.0),
                bottomRight: const Radius.circular(30.0),
              ),
            ),
            color: Colors.pink,
            child: Text(
              "Get Mail",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
