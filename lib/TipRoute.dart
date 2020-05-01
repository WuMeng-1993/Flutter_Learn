import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {

  final String text;

  TipRoute({
    Key key,
    @required this.text // 接收一个text参数
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("提示")),
      body: new Padding(
        padding: EdgeInsets.all(18),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context,"我是返回值"),
                child: new Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
