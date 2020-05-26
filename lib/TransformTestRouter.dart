import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformTestRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.orange),
              child: Transform.translate(
                offset: Offset(20.0, 5.0),
                child: Text("Hello World"),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.blue),
                child: Transform.rotate(
                  angle: math.pi / 2,
                  child: Text("Hello Wu"),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.green),
              child: Transform.scale(
                scale: 2.0,
                child: Text("Hello Meng"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text("Hello WuMeng"),
                  ),
                ),
                Text(
                  "你好啊",
                  style: TextStyle(color: Colors.deepOrange),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
