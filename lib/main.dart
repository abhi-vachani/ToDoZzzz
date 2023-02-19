// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import './screens/All.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    AlarmPage(),
    PostPage(),
    NotificationsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ToDoZzz',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: Colors.black,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("ToDoZzz"),
            ),
            body: _pageOptions[_selectedPage],
            bottomNavigationBar: BottomNavigationBar(
              selectedIconTheme: IconThemeData(size: 40, opacity: .8),
              unselectedIconTheme: IconThemeData(size: 25, opacity: .8),
              selectedItemColor: Color.fromARGB(255, 93, 19, 143),
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              currentIndex: _selectedPage,
              onTap: (int index) {
                setState(() {
                  _selectedPage = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    backgroundColor: Color.fromARGB(255, 15, 0, 39),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.access_alarm),
                    backgroundColor: Color.fromARGB(255, 15, 0, 39),
                    label: 'Alarm'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.format_list_bulleted_add),
                    backgroundColor: Color.fromARGB(255, 15, 0, 39),
                    label: 'Post'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.circle_notifications),
                    label: 'Notifications'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined),
                    backgroundColor: Color.fromARGB(255, 21, 0, 56),
                    label: 'Account'),
              ],
            )));
  }
}
