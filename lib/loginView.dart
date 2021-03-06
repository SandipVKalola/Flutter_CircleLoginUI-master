import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Login",
          style: TextStyle(
              color: Colors.pink, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
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
              labelText: "Email id Or Username",
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ),
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
              labelText: "Password",
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Checkbox(
              value: false,
              onChanged: (val) {},
            ),
            Text("Remember password")
          ],
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
              "Login",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
