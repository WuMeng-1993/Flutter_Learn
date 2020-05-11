import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FormTestRoute();
  }
}

class _FormTestRoute extends State<FormTestRoute> {

  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormTestRoute"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Form(
          key: _formKey, // 设置GlobalKey，用于FormState后面获取
          autovalidate: true, // 开启自动校验
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    icon: Icon(Icons.person)),
                // 校验用户名
                validator: (v) {
                  return v.trim().length > 0 ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "你的登录密码",
                  icon: Icon(Icons.lock)
                ),
                obscureText: true,
                validator: (v){
                  return v.trim().length > 5 ? null : "密码不能少于6位";
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15),
                        child: Text("登录"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.red,
                        onPressed: (){
                          if((_formKey.currentState as FormState).validate()) {

                          }
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
