import 'package:flutter/material.dart';

class DialogTestRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("对话框"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("对话框1"),
              onPressed: () async {
                bool delete = await showDeleteConfirmDialog1(context);
                if (delete == null) {
                  print("取消删除");
                } else {
                  print("已确定删除");
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Future<bool> showDeleteConfirmDialog1(BuildContext context) {
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Text("您确定要删除当前文件吗？"),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text("确定"),
                onPressed: () => Navigator.of(context).pop(true),
              )
            ],
          );
        }
    );
  }


}