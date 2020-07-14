import 'package:flutter/material.dart';
import 'package:flutterapp1/color/NavBar.dart';

class NavBarTestRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("标题颜色"),
      ),
      body: Column(
        children: <Widget>[
          NavBar(title: "标题",color: Colors.blue),
          NavBar(title: "标题",color: Colors.white)
        ],
      ),
    );
  }

}