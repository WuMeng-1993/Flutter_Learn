import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("New Route")),
      body: new Center(
        child: new Text("This is a new Route"),
      ),
    );
  }

}
