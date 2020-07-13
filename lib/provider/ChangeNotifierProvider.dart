import 'package:flutter/material.dart';
import 'package:flutterapp1/provider/InheritedProvider.dart';

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {

  final T data;
  final Widget child;

  ChangeNotifierProvider({Key key, this.data, this.child});

  // 定义一个便捷方法，方便子树中的Widget获取共享数据
  static T of<T>(BuildContext context) {
    // final type = _typeOf<InheritedProvider<T>>();
    final provider = context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>();
    return provider.data;
  }

  @override
  _ChangeNotifierProviderState<T> createState() {
    return new _ChangeNotifierProviderState();
  }

}

class _ChangeNotifierProviderState<T extends ChangeNotifier> extends State<ChangeNotifierProvider<T>> {

  @override
  Widget build(BuildContext context) {
    return InheritedProvider<T>(
      data: widget.data,
      child: widget.child,
    );
  }

  @override
  void initState() {
    // 给model添加监听器
    widget.data.addListener(update);
    super.initState();
  }

  void update() {
    // 如果数据发生变化,(model类调用了notifyListeners)，重新构建InheritedProvider
    setState(() => {});
  }

  @override
  void didUpdateWidget(ChangeNotifierProvider<T> oldWidget) {
    // 当provider更新时，如果新旧数据不相等，则解绑旧数据监听，同时添加新数据监听
    if (widget.data != oldWidget.data) {
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // 移除监听器
    widget.data.removeListener(update);
    super.dispose();
  }
}
