import 'package:flutter/material.dart';
import 'package:brewery/ale.dart';

class BreweryLogin extends StatelessWidget {
  final Widget header;
  final InputDecoration usernameDecoration;
  final InputDecoration passwordDecoration;
  final ValueChanged<String> onUsernameChanged;
  final ValueChanged<String> onPasswordChanged;
  final Function(String, String) onSubmit;

  BreweryLogin({
    Key key,
    this.header,
    this.usernameDecoration,
    this.passwordDecoration,
    this.onUsernameChanged,
    this.onPasswordChanged,
    this.onSubmit,
  }) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        if (header != null) header,
        BreweryUsernameField(
          decoration: usernameDecoration,
          controller: _usernameController,
          onChanged: onUsernameChanged,
        ),
        BreweryPasswordField(
          decoration: passwordDecoration,
          controller: _passwordController,
          onChanged: onPasswordChanged,
        ),
        SizedBox(height: 30.0),
        BreweryButton(
          child: Text("Login"),
          onPressed: () {
            onSubmit(_usernameController.text, _passwordController.text);
          },
        )
      ],
    );
  }
}
