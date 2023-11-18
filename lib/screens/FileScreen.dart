import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/commonWidgets.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                style: ButtonStyle(),
                onPressed: () {},
                icon: Icon(Icons.folder),
                label: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text("Add folder"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton.icon(
                style: ButtonStyle(),
                onPressed: () {},
                icon: Icon(Icons.save),
                label: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Text("Add File    "),
                ),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ],
    );
  }
}
