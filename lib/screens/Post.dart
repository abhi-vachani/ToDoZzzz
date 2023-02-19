// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Feed',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: ListView.builder(
            itemCount:
                3, // Replace 10 with the number of items you want to display
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 200, // Set the height of the tile
                margin: EdgeInsets.all(8), // Set the margin around the tile
                decoration: BoxDecoration(
                  color: Colors.white,
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
                                'images/image${index + 1}.jpg'), // Replace with the path to your image
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
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', // Replace with your text
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

// import 'package:flutter/material.dart';

// class PostPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.all(25.0),
//         child: MaterialButton(
//             padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//             onPressed: () {
//               // _alarmTimeString = DateFormat('HH:mm').format(DateTime.now());
//               showModalBottomSheet(
//                 useRootNavigator: true,
//                 context: context,
//                 clipBehavior: Clip.antiAlias,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.vertical(
//                     top: Radius.circular(24),
//                   ),
//                 ),
//                 builder: (context) {
//                   return StatefulBuilder(
//                     builder: (context, setModalState) {
//                       return Container(
//                         padding: const EdgeInsets.all(32),
//                         child: Column(
//                           children: [
//                             TextButton(
//                               onPressed: () async {
//                                 var selectedTime = await showTimePicker(
//                                   context: context,
//                                   initialTime: TimeOfDay.now(),
//                                 );
//                                 if (selectedTime != null) {
//                                   final now = DateTime.now();
//                                   var selectedDateTime = DateTime(
//                                       now.year,
//                                       now.month,
//                                       now.day,
//                                       selectedTime.hour,
//                                       selectedTime.minute);
//                                   // _alarmTime = selectedDateTime;
//                                   setModalState(() {
//                                     // _alarmTimeString = DateFormat('HH:mm').format(selectedDateTime);
//                                   });
//                                 }
//                               },
//                               child: Text(
//                                 "Hello!",
//                                 style: TextStyle(fontSize: 32),
//                               ),
//                             ),
//                             // ListTile(
//                             //   title: Text('Repeat'),
//                             //   trailing: Switch(
//                             //     onChanged: (value) {

//                             //   ),
//                             // ),
//                             ListTile(
//                               title: Text('Sound'),
//                               trailing: Icon(Icons.arrow_forward_ios),
//                             ),
//                             ListTile(
//                               title: Text('Title'),
//                               trailing: Icon(Icons.arrow_forward_ios),
//                             ),
//                             // FloatingActionButton.extended(
//                             //   onPressed: () {
//                             //     onSaveAlarm(_isRepeatSelected);
//                             //   },
//                             //   icon: Icon(Icons.alarm),
//                             //   label: Text('Save'),
//                             // ),
//                           ],
//                         ),
//                       );
//                     },
//                   );
//                 },
//               );
//             }));
//   }
// }
