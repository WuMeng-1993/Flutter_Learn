import 'package:flutter/material.dart';

class WrapTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WrapTest"),
      ),
      body: Wrap(
        // direction: Axis.horizontal,
        spacing: 8.0,
        runSpacing: 16.0,
        alignment: WrapAlignment.center,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("A"),
            ),
            label: Text("Hamilton"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("M"),
            ),
            label: Text("Lafayette"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("H"),
            ),
            label: Text("Mulligan"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("J"),
            ),
            label: Text("Laurens"),
          )
        ],
      ),
    );
  }
}
