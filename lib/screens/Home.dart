// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Simple To Do List: Need to add a way for user to input
    const title = 'To Do List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              title: Text('Map'),
            ),
            ListTile(
              title: Text('Album'),
            ),
            ListTile(
              title: Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}
