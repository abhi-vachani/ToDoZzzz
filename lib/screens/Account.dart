// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text(
        'Your Account',
        style: TextStyle(fontSize: 36.0, color: Colors.deepPurpleAccent),
      ),
    );
  }
}
