import 'package:flutter/material.dart';

class BreweryTabView extends StatelessWidget {
  final List<TabViewItem> children;
  final double elevation;
  final bool isScrollable;
  final Function(int) onTap;

  const BreweryTabView({
    Key key,
    @required this.children,
    this.elevation = 16.0,
    this.isScrollable = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: children != null ? children.length : 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: elevation,
          titleSpacing: 0,
          bottom: PreferredSize(
            child: TabBar(
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              isScrollable: isScrollable,
              tabs: _buildTabs(),
              onTap: onTap,
            ),
            preferredSize: Size.fromHeight(30.0),
          ),
        ),
        body: TabBarView(children: _buildContents()),
      ),
    );
  }

  List<Widget> _buildTabs() {
    var items = <Widget>[];

    for (final item in children) {
      items.add(
        Tab(child: item.tab),
      );
    }
    return items;
  }

  List<Widget> _buildContents() {
    var items = <Widget>[];

    for (final item in children) {
      items.add(item.content);
    }
    return items;
  }
}

class TabViewItem {
  final Widget tab;
  final Widget content;

  TabViewItem({
    @required this.tab,
    @required this.content,
  });
}
