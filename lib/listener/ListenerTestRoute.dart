import 'package:flutter/material.dart';

class ListenerTestRoute extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ListenerTestRouteState();
  }

}

class _ListenerTestRouteState extends State<ListenerTestRoute> {

  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listener测试"),
      ),
      body: Listener(
        onPointerDown: (PointerDownEvent event) => setState(() => _event = event),
        onPointerMove: (PointerMoveEvent event) => setState(() => _event = event),
        onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
        child: Container(
          width: 300,
          height: 150,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(_event?.toString()??"",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }

}