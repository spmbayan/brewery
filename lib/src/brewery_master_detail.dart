import 'package:flutter/material.dart';

/// A convenience widget that handles showing of a master and a detail screen depending on orientation/ screen width.
class BreweryMasterDetail extends StatelessWidget {
  /// The main widget. This must not be null.
  final Widget master;

  /// The detail widget. If this is null, master will expand and use all of the remaining space.
  final Widget detail;

  BreweryMasterDetail({
    Key key,
    @required this.master,
    this.detail,
  })  : assert(master != null, "master cannot be null"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        bool isLargeScreen = MediaQuery.of(context).size.width > 600.0;

        return Row(
          children: <Widget>[
            Expanded(child: master),
            if (isLargeScreen && detail != null) Expanded(child: detail),
          ],
        );
      },
    );
  }
}
