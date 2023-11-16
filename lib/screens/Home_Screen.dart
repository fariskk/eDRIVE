import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Text("this is recent $index");
        },
      ),
      ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Text("this is notification $index");
        },
      )
    ]);
  }
}
