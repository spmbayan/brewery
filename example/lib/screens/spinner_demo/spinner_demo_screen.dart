import 'package:flutter/material.dart';
import 'package:brewery/ale.dart';

import '../../models/list_item.dart';

class SpinnerDemoScreen extends StatefulWidget {
  SpinnerDemoScreen({
    Key key,
  }) : super(key: key);

  @override
  State<SpinnerDemoScreen> createState() => _SpinnerDemoScreenState();
}

class _SpinnerDemoScreenState extends State<SpinnerDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(title: _buildItem(index)),
    );
  }

  Widget _buildItem(int index) {
    final listItem = _items[index];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: <Widget>[
          Text(
            listItem.title,
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          listItem.item,
        ],
      ),
    );
  }

  final List<ListItem> _items = [
    ListItem(
      title: 'Default',
      item: BrewerySpinner(),
    ),
    ListItem(
      title: 'Custom Color',
      item: BrewerySpinner(
        color: Colors.red,
      ),
    ),
    ListItem(
      title: 'Custom Size',
      item: BrewerySpinner(
        color: Colors.green,
        size: 100.0,
      ),
    ),
    ListItem(
      title: 'With Background Color',
      item: BrewerySpinner(
        strokeColor: Colors.blue,
        size: 80.0,
        color: Colors.red,
      ),
    ),
    ListItem(
      title: 'With Custom Stroke Width',
      item: BrewerySpinner(
        strokeColor: Colors.blue,
        size: 80.0,
        color: Colors.red,
        strokeWidth: 10.0,
      ),
    ),
  ];
}
