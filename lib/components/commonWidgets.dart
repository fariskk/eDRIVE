import 'package:flutter/material.dart';

// top name section
Widget TopNameSection = Container(
  padding: EdgeInsets.symmetric(horizontal: 15),
  height: 29,
  margin: EdgeInsets.only(top: 8),
  decoration: BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
  child: Align(
    alignment: Alignment.centerRight,
    child: CircleAvatar(
      radius: 13,
      backgroundColor: Colors.green,
      child: Text("f"),
    ),
  ),
);

// empty screen widget

Widget EmptyWidget = Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.file_copy,
        size: 50,
        color: Color.fromARGB(255, 91, 90, 90),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "No Files",
        style: TextStyle(fontSize: 20),
      )
    ],
  ),
);
