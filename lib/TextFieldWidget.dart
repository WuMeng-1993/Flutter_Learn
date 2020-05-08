import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _selectionController = new TextEditingController();
    _selectionController.text = "Hello World!";
    _selectionController.selection = new TextSelection(
        baseOffset: 0, extentOffset: _selectionController.text.length);

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
                prefixIcon: new Icon(Icons.person)),
            onChanged: (value) {
              print(value);
            },
            controller: _selectionController,
          ),
          new TextField(
            decoration: new InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: new Icon(Icons.lock)),
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
