import 'package:flutter/material.dart';
import 'package:brewery/ale.dart';

class ScrollableTabViewDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BreweryTabView(
      children: [
        TabViewItem(
          tab: Text('First Tab'),
          content: Container(
            child: Center(
              child: Text('Text Only'),
            ),
          ),
        ),
        TabViewItem(
          tab: Container(
            child: Icon(Icons.looks_two),
          ),
          content: Container(
            child: Center(
              child: Text('Icon Only'),
            ),
          ),
        ),
        TabViewItem(
          tab: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.phone_iphone),
                SizedBox(width: 8.0),
                Text('Third Tab'),
              ],
            ),
          ),
          content: Container(
            child: Center(
              child: Text('Horizontal Icon and Text'),
            ),
          ),
        ),
        TabViewItem(
          tab: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.phone_android),
                SizedBox(width: 8.0),
                Text('Fourth Tab with Long Title'),
              ],
            ),
          ),
          content: Container(
            child: Center(
              child: Text('Vertical Icon and Text'),
            ),
          ),
        ),
        TabViewItem(
          tab: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.camera),
                SizedBox(width: 8.0),
                Text('Fifth Tab with a long title'),
              ],
            ),
          ),
          content: Container(
            child: Center(
              child: Text('Horizontal Icon and Text'),
            ),
          ),
        ),
        TabViewItem(
          tab: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Sixth Tab'),
                SizedBox(width: 8.0),
                Icon(Icons.calendar_today),
              ],
            ),
          ),
          content: Container(
            child: Center(
              child: Text('Vertical Text and Icon'),
            ),
          ),
        ),
      ],
      isScrollable: true,
      onTap: (index) {},
    );
  }
}
