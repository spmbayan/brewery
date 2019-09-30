import 'package:flutter/material.dart';
import 'package:brewery/ale.dart';

import '../models/drawer_item.dart';
import 'index.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final item = DrawerItem.all[_selectedIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(item.value),
      ),
      body: _buildBody(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildBody() => BreweryMasterDetail(master: _getMasterWidget());

  Widget _buildDrawer() {
    return BrewerySectionedDrawer(
      header: Container(
        height: 150.0,
        color: Colors.blue,
      ),
      itemCount: DrawerItem.all.length,
      itemBuilder: (BuildContext context, index) => ListTile(
        title: Text(DrawerItem.all[index].value),
        onTap: () {
          Navigator.of(context).pop();
          if (index == _selectedIndex) return;

          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget _getMasterWidget() {
    final item = DrawerItem.all[_selectedIndex];

    switch (item) {
      case DrawerItem.LABELED_ICON:
        return LabeledIconDemoScreen();

      case DrawerItem.SPINNER:
        return SpinnerDemoScreen();

      case DrawerItem.SEARCHBAR:
        return SearchBarDemoScreen();

      case DrawerItem.BLURIMAGE:
        return BlurImageDemoScreen();

      case DrawerItem.PASSWORDFIELD:
        return PasswordFieldDemoScreen();

      case DrawerItem.LOGIN:
        return LoginDemoScreen();

      case DrawerItem.SCROLLABLETABVIEW:
        return ScrollableTabViewDemoScreen();

      case DrawerItem.PROFILE:
        return ProfileDemoScreen();

      default:
        return Container(color: Colors.red);
    }
  }
}
