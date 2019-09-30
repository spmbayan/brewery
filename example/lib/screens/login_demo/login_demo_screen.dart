import 'package:flutter/material.dart';
import 'package:brewery/ale.dart';

class LoginDemoScreen extends StatefulWidget {
  @override
  _LoginDemoScreenState createState() => _LoginDemoScreenState();
}

class _LoginDemoScreenState extends State<LoginDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: BreweryLogin(
        header: Icon(
          Icons.apps,
          size: 100.0,
        ),
        onSubmit: (username, password) {
          print("username: $username");
          print("password: $password");
        },
      ),
    );
  }
}
