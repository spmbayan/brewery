import 'package:flutter/material.dart';

class BreweryPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final InputDecoration decoration;
  final bool enabledObscureToggle;
  final TextEditingController controller;

  BreweryPasswordField({
    Key key,
    this.controller,
    this.onChanged,
    this.decoration,
    this.enabledObscureToggle = true,
  })  : assert(enabledObscureToggle != null),
        super(key: key);

  @override
  _BreweryPasswordFieldState createState() => _BreweryPasswordFieldState(
        controller: controller,
        decoration: decoration,
        enabledObscureToggle: enabledObscureToggle,
        onChanged: onChanged,
      );
}

class _BreweryPasswordFieldState extends State<BreweryPasswordField> {
  final String _defaultHintText = "Password";

  final InputDecoration _decoration;
  final ValueChanged<String> _onChanged;

  TextEditingController _controller;
  bool _obscureText;
  bool _enabledObscureToggle;

  _BreweryPasswordFieldState({
    TextEditingController controller,
    InputDecoration decoration,
    bool enabledObscureToggle,
    ValueChanged<String> onChanged,
  })  : _controller = controller,
        _decoration = decoration,
        _enabledObscureToggle = enabledObscureToggle,
        _onChanged = onChanged;

  @override
  void initState() {
    super.initState();

    _obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      obscureText: _obscureText,
      onChanged: _onChanged,
      decoration: _buildDecoration(),
    );
  }

  InputDecoration _buildDecoration() {
    InputDecoration decoration = _decoration != null
        ? _decoration
        : InputDecoration(hintText: _defaultHintText);

    if (_enabledObscureToggle) {
      if (decoration.suffixIcon == null) {
        decoration = decoration.copyWith(suffixIcon: _lockIcon);
      } else {
        decoration = decoration.copyWith(
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              decoration.suffixIcon,
              _lockIcon,
            ],
          ),
        );
      }
    }

    if (decoration.hintText == null || decoration.hintText.isEmpty) {
      decoration = decoration.copyWith(hintText: _defaultHintText);
    }

    return decoration;
  }

  Widget get _lockIcon => FlatButton(
        child: _obscureText
            ? Icon(Icons.lock_outline, size: 25.0)
            : Icon(Icons.lock_open, size: 25.0),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      );
}
