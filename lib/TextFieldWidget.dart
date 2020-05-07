import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("TextField"),
      ),
      body: new Column(
        children: <Widget>[
          new TextField(
            autofocus: true,
            decoration: new InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: new Icon(Icons.person)
            ),
          )
        ],
      ),
    );
  }
}
