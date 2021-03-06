import 'package:flutter/material.dart';
import 'package:flutterapp1/AlignTestRoute.dart';
import 'package:flutterapp1/ButtonWidget.dart';
import 'package:flutterapp1/ClipTestRoute.dart';
import 'package:flutterapp1/ColumnTestRouter.dart';
import 'package:flutterapp1/ContainerTestRouter.dart';
import 'package:flutterapp1/DecoratedBoxTest.dart';
import 'package:flutterapp1/EchoRoute.dart';
import 'package:flutterapp1/FixedGridView.dart';
import 'package:flutterapp1/FlexLayoutTestRoute.dart';
import 'package:flutterapp1/FocusTestRoute.dart';
import 'package:flutterapp1/FormTestRoute.dart';
import 'package:flutterapp1/ImageWidget.dart';
import 'package:flutterapp1/InfiniteGridView.dart';
import 'package:flutterapp1/InfiniteListView.dart';
import 'file:///E:/Flutter/flutter_app_1/lib/inherited/InheritedWidgetTestRoute.dart';
import 'package:flutterapp1/ListView2TestRoute.dart';
import 'package:flutterapp1/ListViewTestRoute.dart';
import 'package:flutterapp1/PaddingTestRoute.dart';
import 'package:flutterapp1/ProgressRoute.dart';
import 'package:flutterapp1/RowTestRoute.dart';
import 'package:flutterapp1/ScaffoldRoute.dart';
import 'package:flutterapp1/SingleChildScrollViewTest.dart';
import 'package:flutterapp1/StackAndPositionedTestRoute.dart';
import 'package:flutterapp1/TransformTestRouter.dart';
import 'package:flutterapp1/TwoProgressIndicator.dart';
import 'package:flutterapp1/RouterTestRoute.dart';
import 'package:flutterapp1/SwitchAndCheckBoxTestRoute.dart';
import 'package:flutterapp1/TextFieldWidget.dart';
import 'package:flutterapp1/TextWidget.dart';
import 'package:flutterapp1/TipRoute.dart';
import 'package:flutterapp1/WillPopScopeTestRoute.dart';
import 'package:flutterapp1/WrapTestRoute.dart';
import 'package:flutterapp1/async/FutureBuilderTestRoute.dart';
import 'package:flutterapp1/async/StreamBuilderTestRoute.dart';
import 'package:flutterapp1/color/NavBarTestRoute.dart';
import 'package:flutterapp1/dialog/DialogTestRoute.dart';
import 'package:flutterapp1/listener/ListenerTestRoute.dart';
import 'package:flutterapp1/provider/ProviderRoute.dart';
import 'package:flutterapp1/theme/ThemeTestRoute.dart';

import 'ConstrainedBoxTestRouter.dart';
import 'NewRoute.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Flutter Demo",
//        initialRoute: "/",
//        // 名为"/"的路由作为应用的home(首页)
//        theme: new ThemeData(primarySwatch: Colors.blue),
//        // 注册路由表
//        routes: {
//          "new_route": (context) => new EchoRoute(),
//          "/": (context) => MyHomePage(title: "Flutter Demo Home Page"),
//          "tip_route": (context){
//            return new TipRoute(text: ModalRoute.of(context).settings.arguments);
//          },
//        },
        // home: new MyHomePage(title: "Flutter Demo Home Page")
      home: ListenerTestRoute(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("You have pushed the button this many times:"),
            new Text(
              "$_counter",
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
            new FlatButton(
              child: new Text("Open a new Route"),
              textColor: Colors.blue,
              onPressed: () {
                // 导航到新路由
//                Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return new NewRoute();
//                }));
                Navigator.pushNamed(context, "new_route",arguments: "Hi");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: new Icon(Icons.add),
      ),
    );
  }
}
