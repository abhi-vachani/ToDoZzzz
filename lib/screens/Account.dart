// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
                
        
    return MaterialApp(
      title: 'Account',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: ListView.builder(
            itemCount:
                1, // Replace 10 with the number of items you want to display
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 400, // Set the height of the tile
                margin: EdgeInsets.all(50), // Set the margin around the tile
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'images/mark.jpeg'), // Replace with the path to your image
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("Name: Zark Markerberg\nBio:\nProductivity Goals:",
                          style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
