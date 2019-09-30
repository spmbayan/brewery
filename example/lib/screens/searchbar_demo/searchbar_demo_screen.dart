import 'package:flutter/material.dart';
import 'package:brewery/ale.dart';

import '../../models/list_item.dart';

class SearchBarDemoScreen extends StatefulWidget {
  SearchBarDemoScreen({
    Key key,
  }) : super(key: key);

  @override
  _SearchBarDemoScreenState createState() => _SearchBarDemoScreenState();
}

class _SearchBarDemoScreenState extends State<SearchBarDemoScreen> {
  final tint = Color.fromRGBO(249, 204, 65, 1);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        final listItem = _items[index];
        return ListTile(
          title: Container(
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
          ),
        );
      },
    );
  }

  _onEditingComplete() {
    print('onEditingComplete');
  }

  _onSubmitted(String text) {
    print('onSubmitted: $text');
  }

  _onTextChanged(String text) {
    print('onTextChanged: $text');
  }

  List<ListItem> get _items => [
        ListItem(
          title: "Default",
          item: BrewerySearchBar(),
        ),
        ListItem(
          title: "Custom Color",
          item: BrewerySearchBar(
            backgroundColor: Colors.red[300],
          ),
        ),
        ListItem(
          title: "With Action Button",
          item: BrewerySearchBar(
            backgroundColor: Colors.green[300],
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: () {},
              ),
            ],
          ),
        ),
        ListItem(
          title: "More Customizations",
          item: BrewerySearchBar(
            backgroundColor: Colors.black,
            actionsIconTheme: IconThemeData(color: Colors.orange),
            iconTheme: IconThemeData(color: Colors.green),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications_active),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {},
              ),
            ],
            textTheme: TextTheme(
              title: TextStyle(
                color: tint,
                fontSize: 20.0,
              ),
            ),
            cursorColor: Colors.red,
            hintText: "I'm Feeling Lucky",
            hintStyle: TextStyle(color: Colors.purple),
            onEditingComplete: _onEditingComplete,
            onSubmitted: _onSubmitted,
            onTextChanged: _onTextChanged,
          ),
        ),
      ];
}
