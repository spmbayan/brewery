import 'package:flutter/material.dart';
import 'package:brewery/ale.dart';

class PasswordFieldDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: BreweryPasswordField(
        decoration: InputDecoration(
          hintText: 'Password',
        ),
      ),
    );
  }
}
