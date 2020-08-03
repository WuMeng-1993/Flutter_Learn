import 'package:flutter/material.dart';

class DialogRoute extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _DialogRouteState();
  }

}

class _DialogRouteState extends State<DialogRoute> {

  // 复选框选中状态
  bool withTree = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("带复选框的对话框"),
          onPressed: () async{
            bool isDelete = await showDeleteConfirmDialog(context);
            if(isDelete) {
              print("确认删除");
            } else{
              print("取消");
            }
          },
        )
      ],
    );
  }

  Future<bool> showDeleteConfirmDialog(BuildContext context) {

    withTree = false;

    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("你确定要删除当前文件夹吗？"),
                Row(
                  children: <Widget>[
                    Text("同时删除子目录"),
                    Checkbox(
                      value: withTree,
                      onChanged: (bool value) {
                        setState(() {
                          withTree = !withTree;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () => Navigator.of(context).pop(false),
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