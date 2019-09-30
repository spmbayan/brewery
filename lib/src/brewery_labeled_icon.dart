import 'package:flutter/material.dart';

const Color _kDefaultIconColor = Colors.black;

const double _kDefaultIconSize = 24.0;

const TextStyle _kDefaultTextStyle = TextStyle(
  fontSize: 13.0,
  color: Colors.grey,
);

class BreweryLabeledIcon extends StatelessWidget {
  final IconData iconData;

  final Color color;

  final double size;

  final String label;

  final TextStyle style;

  const BreweryLabeledIcon(
    this.iconData, {
    Key key,
    @required this.label,
    this.color,
    this.size,
    this.style,
  })  : assert(iconData != null, 'iconData must not be null'),
        assert(label != null, 'label value must not be null'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIcon(context),
        _buildLabel(context),
      ],
    );
  }

  Widget _buildIcon(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    Color color =
        this.color ?? themeData.iconTheme?.color ?? _kDefaultIconColor;
    double size = this.size ?? themeData.iconTheme?.size ?? _kDefaultIconSize;

    return Icon(
      iconData,
      color: color,
      size: size,
    );
  }

  Widget _buildLabel(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    TextStyle textStyle =
        style ?? themeData.textTheme?.subtitle ?? _kDefaultTextStyle;

    return Text(
      label,
      textAlign: TextAlign.center,
      style: textStyle,
    );
  }
}
