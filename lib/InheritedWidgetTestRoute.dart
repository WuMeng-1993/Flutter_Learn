import 'package:flutter/material.dart';
import 'package:flutterapp1/InheriteTestWidget.dart';
import 'ShareDataWidget.dart';

class InheritedWidgetTestRoute extends StatefulWidget {
  @override
  State<InheritedWidgetTestRoute> createState() {
    return new _InheritedWidgetTestRoute();
  }
}

class _InheritedWidgetTestRoute extends State<InheritedWidgetTestRoute> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("数据共享"),
      ),
      body: Center(
        child: ShareDataWidget(
          data: count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InheriteTestWidget(),
              ),
              RaisedButton(
                child: Text("增加"),
                onPressed: () => setState(() => ++count),
              )
            ],
          ),
        ),
      ),
    );
  }
}
