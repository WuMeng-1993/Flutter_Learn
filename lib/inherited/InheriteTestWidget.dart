import 'package:flutter/material.dart';
import 'file:///E:/Flutter/flutter_app_1/lib/inherited/ShareDataWidget.dart';

class InheriteTestWidget extends StatefulWidget {

  @override
  State<InheriteTestWidget> createState() {
    return new _TestWidgetState();
  }

}

class _TestWidgetState extends State<InheriteTestWidget> {
  @override
  Widget build(BuildContext context) {
    // 使用InheritedWidget中的共享数据
    return Text(ShareDataWidget
        .of(context)
        .data
        .toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 父或祖先Widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    // 如果Build中没有依赖InheritedWidget，则此回调不会被调用
    print("dependencies change");
  }

}
