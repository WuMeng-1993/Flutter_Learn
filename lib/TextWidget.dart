import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Text组件")),
      body: new Column(
        children: <Widget>[
          new Text(
            "Hello World",
            textAlign: TextAlign.left,
          ),
          new Text(
            "Hello I AM WUMENG!" * 10,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          new Text(
            "Every Body",
            textScaleFactor: 2,
          ),
          new Text(
            "黄晓明 + baby",
            style: new TextStyle(
                color: Colors.blue,
                fontSize: 24,
                height: 2,
                fontFamily: "Courier",
                backgroundColor: Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          new Text.rich(TextSpan(children: [
            TextSpan(text: "Home: "),
            TextSpan(
              text: "https://flutterchina.club",
              style: new TextStyle(color: Colors.blue),
              // recognizer: _tapRecognizer
            )
          ])),
          new DefaultTextStyle(
              // 设置文本默认样式
              style: new TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              child: new Column(
                children: <Widget>[
                  new Text("Hello World"),
                  new Text("I am Jack"),
                  new Text(
                    "I am WM",
                    style: new TextStyle(inherit: false, color: Colors.grey),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
