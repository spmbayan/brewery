import 'package:flutter/material.dart';

enum UsernameType { email, username }

class BreweryUsernameField extends StatelessWidget {
  final String _defaultHintText = "Username";

  final TextEditingController controller;
  final InputDecoration decoration;
  final ValueChanged<String> onChanged;
  final UsernameType type;

  BreweryUsernameField({
    Key key,
    this.controller,
    this.decoration,
    this.onChanged,
    this.type = UsernameType.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: type == UsernameType.email
          ? TextInputType.emailAddress
          : TextInputType.text,
      onChanged: onChanged,
      decoration: _decoration(),
    );
  }

  InputDecoration _decoration() {
    InputDecoration _decoration = decoration;

    if (_decoration == null) return InputDecoration(hintText: _defaultHintText);

    if (_decoration.hintText == null || _decoration.hintText.isEmpty) {
      _decoration = decoration.copyWith(hintText: _defaultHintText);
    }

    return _decoration;
  }
}
