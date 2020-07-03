import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget {

  // 需要在子树中共享的数据，保存点击次数
  final int data;
  
  ShareDataWidget({
    @required this.data,
    Widget child
  }) : super(child: child);
  
  static ShareDataWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  // 该回调决定当data发生变化时，是否通知子树中依赖data的Widget
  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.data != data;
  }

}
