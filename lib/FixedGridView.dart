import 'dart:html';

import 'package:flutter/material.dart';

class FixedGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("纵轴固定数量的")),
      body: GridView(
        reverse: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 1.0
        ),
        children: <Widget>[
          Container(
            color: Colors.redAccent,
            child: Icon(Icons.ac_unit)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.airport_shuttle)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.all_inclusive)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.beach_access)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.cake)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.free_breakfast)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.ac_unit)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.airport_shuttle)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.all_inclusive)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.beach_access)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.cake)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.free_breakfast)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.ac_unit)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.airport_shuttle)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.all_inclusive)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.beach_access)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.cake)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.free_breakfast)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.ac_unit)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.airport_shuttle)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.all_inclusive)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.beach_access)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.cake)
          ),
          Container(
              color: Colors.redAccent,
              child: Icon(Icons.free_breakfast)
          ),
        ],
      ),
    );
  }

}