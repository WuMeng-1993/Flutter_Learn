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
            ),
            RaisedButton(
              child: Text("对话框2"),
              onPressed: () async {
                int i = await changeLanguage(context);
                if (i == 1) {
                  print("中文简体");
                }
                if (i == 2) {
                  print("美式英语");
                }
                if (i == null) {
                  print("取消选择");
                }
              },
            ),
            RaisedButton(
              child: Text("对话框3"),
              onPressed: () async {
                await showListDialog(context);
              },
            ),
            RaisedButton(
              child: Text("对话框4"),
              onPressed: () async {
                await funShowCustomDialog(context);
              }
            )
          ],
        ),
      ),
    );
  }

  // 显示AlertDialog
  Future<bool> showDeleteConfirmDialog1(BuildContext context) {
    return showDialog<bool>(
        context: context,
        barrierDismissible: false,
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
        });
  }

  // 显示SimpleDialog
  Future<int> changeLanguage(BuildContext context) {
    return showDialog<int>(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("请选择语音"),
            children: <Widget>[
              SimpleDialogOption(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Text("简体中文"),
                ),
                onPressed: () {
                  return Navigator.of(context).pop(1);
                },
              ),
              SimpleDialogOption(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Text("美式英语"),
                ),
                onPressed: () {
                  return Navigator.of(context).pop(2);
                },
              ),
            ],
          );
        });
  }

  // 显示ListView
  Future<void> showListDialog(BuildContext context) async {
    await showDialog<int>(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          var child = Column(
            children: <Widget>[
              ListTile(title: Text("请选择")),
              Expanded(
                child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("$index"),
                        onTap: () => Navigator.of(context).pop(index),
                      );
                    }),
              )
            ],
          );
          return Dialog(
            child: child,
          );
        });
  }

  // 自定义一个
  Future<T> showCustomDialog<T>(
      {BuildContext context,
      bool barrierDismissible = true,
      WidgetBuilder builder}) {
    final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
    return showGeneralDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black87,
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          final Widget pageChild = Builder(builder: builder);
          return SafeArea(
            child: Builder(builder: (BuildContext context) {
              return theme != null
                  ? Theme(data: theme, child: pageChild)
                  : pageChild;
            }),
          );
        },
        transitionDuration: Duration(milliseconds: 150),
        transitionBuilder: _buildMaterialDialogTransitions);
  }

  Widget _buildMaterialDialogTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return ScaleTransition(
      scale: CurvedAnimation(parent: animation, curve: Curves.easeOut),
      child: child,
    );
  }

  Future<bool> funShowCustomDialog(BuildContext context) async{
    return await showCustomDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("确定要删除吗?"),
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