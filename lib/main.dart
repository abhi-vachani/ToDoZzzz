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
    DiningPage(),
    FinancesPage(),
    ResidencePage(),
    TrackingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DRFT',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("DRFT app"),
            ),
            body: _pageOptions[_selectedPage],
            bottomNavigationBar: BottomNavigationBar(
              selectedIconTheme: IconThemeData(size: 40, opacity: .8),
              unselectedIconTheme: IconThemeData(size: 25, opacity: .8),
              selectedItemColor: Colors.blue[900],
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              currentIndex: _selectedPage,
              onTap: (int index) {
                setState(() {
                  _selectedPage = index;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.fastfood), label: 'food'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.attach_money), label: 'finance'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.house), label: 'residence'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.directions_bus), label: 'tracker'),
              ],
            )));
  }
}
