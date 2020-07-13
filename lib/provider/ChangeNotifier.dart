import 'package:flutter/material.dart';

class ChangeNotifier implements Listenable {

  List listeners = [];

  // 添加监听器
  @override
  void addListener(listener) {
    listeners.add(listener);
  }

  // 移除监听器
  @override
  void removeListener(listener) {
    listeners.remove(listener);
  }

  // 通知所有的监听器，触发监听器回调
  void notifyListeners() {
    listeners.forEach((item) => item());
  }

}
