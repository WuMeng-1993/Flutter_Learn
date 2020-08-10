import 'package:flutter/material.dart';
import 'package:flutterapp1/dialog/DialogCheckbox.dart';
import 'package:flutterapp1/dialog/DialogRoute.dart';

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
                }),
            DialogRoute(),
            RaisedButton(
              child: Text("复选框可点击"),
              onPressed: () async {
                bool deleteTree = await showDeleteConfirmDialog2(context);
                if (deleteTree) {
                  print("确认");
                } else {
                  print("取消");
                }
              },
            ),
            RaisedButton(
              child: Text("复选框可点击2"),
              onPressed: () async {
                bool deleteTree = await showDeleteConfirmDialog3(context);
                if (deleteTree) {
                  print("确认");
                } else {
                  print("取消");
                }
              },
            ),
            RaisedButton(
              child: Text("复选框可点击3"),
              onPressed: () async {
                bool deleteTree = await showDeleteConfirmDialog4(context);
                if (deleteTree) {
                  print("确认");
                } else {
                  print("取消");
                }
              },
            ),
            RaisedButton(
              child: Text("弹出底部菜单列表"),
              onPressed: () async {
                int type = await _showModalBottomSheet(context);
                print(type);
              },
            ),
            RaisedButton(
              child: Text("弹出一个全屏的对话框"),
              onPressed: () {
                _showBottomSheet(context);
              },
            ),
            RaisedButton(
              child: Text("显示加载框1"),
              onPressed: () async {
                showLoadingDialog(context);
              },
            )
          ],
        ),
      ),
    );
  }

  // 显示加载框1
  void showLoadingDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(
                  padding: EdgeInsets.only(top: 26),
                  child: Text("正在加载中...请稍等"),
                )
              ],
            ),
          );
        }
    );
  }


  PersistentBottomSheetController<int> _showBottomSheet(BuildContext context) {
    return showBottomSheet<int>(
        context: context,
        builder: (BuildContext context) {
          return ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("$index"),
                  onTap: () {
                    print("$index");
                    Navigator.of(context).pop();
                  },
                );
              }
          );
        });
  }

  // 显示底部弹窗
  Future<int> _showModalBottomSheet(BuildContext context) {
    return showModalBottomSheet<int>(
        context: context,
        builder: (BuildContext context) {
          return ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("$index"),
                  onTap: () => Navigator.of(context).pop(index),
                );
              }
          );
        });
  }

  Future<bool> showDeleteConfirmDialog4(BuildContext context) {
    bool _withTree = false;
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("你确定要删除当前文件吗？"),
                Row(
                  children: <Widget>[
                    Text("同时删除子目录?"),
                    Builder(
                      builder: (BuildContext context) {
                        return Checkbox(
                          value: _withTree,
                          onChanged: (bool value) {
                            (context as Element).markNeedsBuild();
                            _withTree = !_withTree;
                          },
                        );
                      },
                    )
                  ],
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text("取消"),
                  onPressed: () => Navigator.of(context).pop(false)),
              FlatButton(
                child: Text("确定"),
                onPressed: () => Navigator.of(context).pop(true),
              )
            ],
          );
        });
  }

  Future<bool> showDeleteConfirmDialog3(BuildContext context) {
    bool _withTree = false;
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("你确定要删除当前文件吗？"),
                Row(
                  children: <Widget>[
                    Text("同时删除子目录?"),
                    StatefulBuilder(
                      builder: (context, _setState) {
                        return Checkbox(
                          value: _withTree,
                          onChanged: (bool value) {
                            _setState(() {
                              _withTree = !_withTree;
                            });
                          },
                        );
                      },
                    )
                  ],
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text("取消"),
                  onPressed: () => Navigator.of(context).pop(false)),
              FlatButton(
                child: Text("确定"),
                onPressed: () => Navigator.of(context).pop(true),
              )
            ],
          );
        });
  }

  Future<bool> showDeleteConfirmDialog2(BuildContext context) {
    bool _withTree = false;
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("你确定要删除当前文件吗？"),
                Row(
                  children: <Widget>[
                    Text("同时删除子目录?"),
                    DialogCheckbox(
                      value: _withTree,
                      onChange: (bool value) {
                        _withTree = !_withTree;
                      },
                    )
                  ],
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text("取消"),
                  onPressed: () => Navigator.of(context).pop(false)),
              FlatButton(
                child: Text("确定"),
                onPressed: () => Navigator.of(context).pop(true),
              )
            ],
          );
        });
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
  Future<T> showCustomDialog<T>({BuildContext context,
    bool barrierDismissible = true,
    WidgetBuilder builder}) {
    final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
    return showGeneralDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        barrierLabel:
        MaterialLocalizations
            .of(context)
            .modalBarrierDismissLabel,
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

  Widget _buildMaterialDialogTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return ScaleTransition(
      scale: CurvedAnimation(parent: animation, curve: Curves.easeOut),
      child: child,
    );
  }

  Future<bool> funShowCustomDialog(BuildContext context) async {
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
        });
  }

}
