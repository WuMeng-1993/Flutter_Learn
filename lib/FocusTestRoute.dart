import 'package:flutter/material.dart';
import 'package:flutterapp1/TextWidget.dart';

class FocusTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FocusTestRoute();
  }
}

class _FocusTestRoute extends State<FocusTestRoute> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();

  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Focus"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              focusNode: focusNode1,
              decoration: InputDecoration(
                labelText: "input1",
              ),
            ),
            TextField(
              focusNode: focusNode2,
              decoration: InputDecoration(labelText: "input2"),
            ),
            Builder(builder: (ctx) {
              return Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("移动焦点"),
                    onPressed: () {
                      if (focusScopeNode == null) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode2);
                    },
                  ),
                  RaisedButton(
                    child: Text("隐藏键盘"),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                  )
                ],
              );
            }),
            TextField(
              decoration: InputDecoration(
                  labelText: "请输入用户名",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
            ),
            Theme(
              data: Theme.of(context).copyWith(
                hintColor: Colors.red[200],
                inputDecorationTheme: InputDecorationTheme(
                  labelStyle: TextStyle(color: Colors.red),
                  hintStyle: TextStyle(color: Colors.green,fontSize: 12.0)
                )
              ),
              child: Column(
                children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: "用户名",
                        hintText: "请输入用户名或邮箱",
                        prefixIcon: Icon(Icons.person)
                      ),
                    ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "请输入密码",
                      hintStyle: TextStyle(color: Colors.yellow,fontSize: 20.0)
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "电子邮件地址",
                  prefixIcon: Icon(Icons.email),
                  border: InputBorder.none
                ),
              ),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.green,width: 1.0))
              ),
            )
          ],
        ),
      ),
    );
  }
}
