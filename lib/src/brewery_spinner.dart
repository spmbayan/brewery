import 'package:flutter/material.dart';

class BrewerySpinner extends StatelessWidget {
  final Color color;
  final double size;
  final Color strokeColor;
  final double strokeWidth;

  BrewerySpinner({
    Key key,
    this.strokeColor,
    this.color = Colors.blue,
    this.size = 30.0,
    this.strokeWidth = 4.0,
  })  : assert(color != null),
        assert(size != null),
        assert(strokeWidth != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size,
        width: size,
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth,
          valueColor: AlwaysStoppedAnimation<Color>(strokeColor),
          backgroundColor: color,
        ),
      ),
    );
  }
}
