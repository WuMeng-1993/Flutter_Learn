import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/TipRoute.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RouterTestRoute"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () async {
            var result = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return new TipRoute(text: "我是路由XXX");
            }));
            print("路由返回值: $result");
          },
          child: new Text("打开提示页"),
        ),
      ),
    );
  }
}
