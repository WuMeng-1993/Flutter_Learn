import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget {

  ShareDataWidget({
    @required this.data,
    Widget child
  }) : super(child: child);

  final int data;

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.data != data;
  }

}
