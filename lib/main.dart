import 'package:flutter/material.dart';
import 'package:flutterapp1/ButtonWidget.dart';
import 'package:flutterapp1/EchoRoute.dart';
import 'package:flutterapp1/RouterTestRoute.dart';
import 'package:flutterapp1/TextWidget.dart';
import 'package:flutterapp1/TipRoute.dart';

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
      home: new ButtonWidget(),
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
