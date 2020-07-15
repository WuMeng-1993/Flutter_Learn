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
          // 背景色为蓝色，则title自动为白色
          NavBar(title: "标题",color: Colors.blue),
          // 背景色为白色，则title自动为黑色
          NavBar(title: "标题",color: Colors.white)
        ],
      ),
    );
  }

}
