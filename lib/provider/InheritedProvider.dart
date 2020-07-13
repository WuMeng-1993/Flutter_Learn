import 'package:flutter/material.dart';

// 一个通用的InheritedWidget，保存任何需要跨组件共享的状态
class InheritedProvider<T> extends InheritedWidget {

  // 共享状态使用泛型
  final T data;

  InheritedProvider({
    @required
    this.data,
    Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // 在此简单返回true，则每次更新都会调用依赖其的子孙节点的didChangeDependencies
    return true;
  }
  
}
