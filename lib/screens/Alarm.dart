
import 'package:flutter/material.dart';


class AlarmPage extends StatefulWidget{
  @override 
  _AlarmPageState createState() => _AlarmPageState(); 
}

class _AlarmPageState extends State<AlarmPage>{
  @override 
  Widget build(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Alarm',
            style: TextStyle(color: Colors.blue), 
          ),
        ],
      ),
    );
  }
}

