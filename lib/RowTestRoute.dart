import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hello World"),
              Text("I an Jack")
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hello World"),
              Text("I am Jack")
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text("Hello World"),
              Text("I Am Jack")
            ],
          ),
          Row(
            verticalDirection: VerticalDirection.up,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Hello World",style: TextStyle(fontSize: 30.0),),
              Text("I Am Jack")
            ],
          )
        ],
      ),
    );
  }
}
