import 'package:flutter/material.dart';
import 'file:///E:/Flutter/flutter_app_1/lib/inherited/InheriteTestWidget.dart';
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
        // 使用ShareDataWidget
        child: ShareDataWidget(
          data: count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                // 子Widget中依赖ShareDataWidget
                child: InheriteTestWidget(),
              ),
              RaisedButton(
                child: Text("增加"),
                // 每点击一次，count自增，然后重新build,ShareDataWidget中的data将被更新
                onPressed: () => setState(() => ++count),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}
