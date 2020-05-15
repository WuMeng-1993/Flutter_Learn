import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnTestRouter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
      ),
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text("HI"),
                    Text("Hello")
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }

}