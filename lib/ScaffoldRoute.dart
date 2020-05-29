import 'package:flutter/material.dart';

class ScaffoldRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ScaffoldRouteState();
  }
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP Name"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share),onPressed: (){},),
          IconButton(icon: Icon(Icons.save),onPressed: (){},)
        ],
        leading: Builder(builder: (context){
          return IconButton(
            icon: Icon(Icons.dashboard,color: Colors.white),
            onPressed: (){
              // 打开抽屉菜单
              Scaffold.of(context).openDrawer();
            },
          );
        },),
      ),

    );
  }
}
