import 'package:flutter/material.dart';

class StackAndPositionedTestRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackAndPositioned"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 19.0,
              child: Text("I AM JACK"),
            ),
            Container(
              color: Colors.red,
              child: Text("Hello World",style: TextStyle(color: Colors.white)),
            ),
            Positioned(
              top: 20,
              child: Text("Your Friend"),
            )
          ],
        ),
      ),
    );
  }

}