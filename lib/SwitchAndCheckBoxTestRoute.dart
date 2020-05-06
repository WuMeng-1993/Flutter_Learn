import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SwitchAndCheckBoxTestRoute();
  }
}

class _SwitchAndCheckBoxTestRoute extends State<SwitchAndCheckBoxTestRoute> {

  // 维护单选开关的状态
  bool _switchSelected = true;

  // 维护复选框的状态
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SwitchAndCheckBox"),
      ),
      body: new Column(
        children: <Widget>[
          new Switch(
              value: _switchSelected,
              onChanged: (value) {
                // 重新构建页面
                setState(() {
                  _switchSelected = value;
                });
              }
          ),
          new Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              }
          )
        ],
      ),
    );
  }
}
