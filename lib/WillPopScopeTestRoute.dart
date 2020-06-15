import 'package:flutter/material.dart';

class WillPopScopeTestRoute extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new WillPopScopeTestRouteState();
  }

}

class WillPopScopeTestRouteState extends State<WillPopScopeTestRoute> {

  DateTime _lastPressedAt;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("WillPopScope"),
        ),
        body: new WillPopScope(
            onWillPop: () async{
              if(_lastPressedAt == null || DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
                _lastPressedAt = DateTime.now();
                return false;
              }
              return true;
            },
            child: Container(
              child: Text("1秒内连续按两次返回键退出"),
            )
        )
      );
  }

}