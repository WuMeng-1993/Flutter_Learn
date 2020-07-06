import 'package:flutter/material.dart';
import 'package:flutterapp1/ShareDataWidget.dart';

class InheriteTestWidget extends StatefulWidget {

  @override
  State<InheriteTestWidget> createState() {
    return new _TestWidgetState();
  }

}

class _TestWidgetState extends State<InheriteTestWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget
        .of(context)
        .data
        .toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("dependencies change");
  }

}