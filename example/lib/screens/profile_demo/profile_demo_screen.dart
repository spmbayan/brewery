import 'package:flutter/material.dart';
import 'package:brewery/ale.dart';

class ProfileDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: BreweryProfile(
        avatar: Icon(
          Icons.account_circle,
          size: 100.0,
        ),
        name: "John Doe",
        username: "sample@example.com",
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
            title: Text("Contact number ${index + 1}"),
            subtitle: index != 0 ? Text('Contact detail') : null,
            trailing: index == 2 ? Icon(Icons.arrow_right) : null,
            onTap: () {
              print('Tapped item at index: $index');
            },
          );
        },
      ),
    );
  }
}
