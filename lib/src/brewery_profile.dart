import 'package:flutter/material.dart';

class BreweryProfile extends StatelessWidget {
  final Widget avatar;
  final String name;
  final String username;
  final IndexedWidgetBuilder itemBuilder;

  final int itemCount;

  BreweryProfile({
    Key key,
    this.avatar,
    this.name,
    this.username,
    this.itemBuilder,
    this.itemCount,
  })  : assert(name != null, name.isNotEmpty),
        assert((itemCount != null && itemCount >= 0) && itemBuilder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildHeader(),
        if (itemCount != null && itemCount > 0)
          Expanded(
            child: ListView(
              children: _getItems(context),
            ),
          ),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          avatar != null ? avatar : _circleAvatar(),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          if (username != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                username,
                style: TextStyle(fontSize: 16, color: Color(0xFFB0BEC5)),
              ),
            ),
        ],
      ),
    );
  }

  Widget _circleAvatar() {
    final arr = name.split(" ");
    var initials = arr.first.substring(0, 1);
    if (arr.length >= 2) {
      initials += arr.last.substring(0, 1);
    }
    return CircleAvatar(
      radius: 50.0,
      backgroundColor: Colors.blue,
      child: Text(
        initials.toUpperCase(),
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
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
}
