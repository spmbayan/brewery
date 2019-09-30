import 'package:flutter/material.dart';

class BrewerySectionedDrawer extends StatelessWidget {
  final Color color;

  final double elevation;

  final Widget footer;

  final Widget header;

  final String semanticLabel;

  final IndexedWidgetBuilder itemBuilder;

  final int itemCount;

  BrewerySectionedDrawer({
    Key key,
    @required this.itemBuilder,
    this.itemCount,
    this.color,
    this.elevation = 16.0,
    this.footer,
    this.header,
    this.semanticLabel,
  })  : assert(itemBuilder != null),
        assert(elevation != null && elevation >= 0.0),
        assert(itemCount != null && itemCount >= 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: elevation,
      semanticLabel: semanticLabel,
      child: Container(
        color: color,
        child: Column(
          children: <Widget>[
            if (header != null) _header,
            Expanded(
              child: ListView(
                children: _getItems(context),
              ),
            ),
            if (footer != null) _footer,
          ],
        ),
      ),
    );
  }

  List<Widget> _getItems(BuildContext context) {
    List<Widget> items = [];

    for (int i = 0; i < itemCount; i++) {
      Widget item = itemBuilder(context, i);
      items.add(item);
    }

    return items;
  }

  Widget get _header => Align(
        alignment: Alignment.topCenter,
        child: header,
      );

  Widget get _footer => Align(
        alignment: Alignment.bottomCenter,
        child: footer,
      );
}
