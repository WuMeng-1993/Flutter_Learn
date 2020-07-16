import 'package:flutter/material.dart';

// 路由换肤
class ThemeTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ThemeTestRouteState();
  }
}

class _ThemeTestRouteState extends State<ThemeTestRoute> {
  // 当前路由主题色
  Color _themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {

    ThemeData themeData = Theme.of(context);

    return Theme(
      data: ThemeData(
          // 用于导航栏、FloatingActionButton的背景色
          primarySwatch: _themeColor,
          // 用于Icon颜色
          iconTheme: IconThemeData(color: _themeColor)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("主题测试"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 第一行的Icon使用主题中的IconTheme
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite),
                Icon(Icons.airport_shuttle),
                Text("颜色跟谁主题")
              ],
            ),
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(color: Colors.black),
              ),
              // 第二行Icon自定义颜色(固定为黑色)
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text("颜色固定黑色")
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.palette),
          onPressed: () => setState(() => _themeColor =
              _themeColor == Colors.teal ? Colors.red : Colors.teal),
        ),
      ),
    );
  }
}
