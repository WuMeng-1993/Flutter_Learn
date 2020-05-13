import 'package:flutter/material.dart';

class ProgressRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ProgressRoute();
  }
}

class _ProgressRoute extends State<ProgressRoute>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() => setState(() => {}));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProgressRoute"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: ColorTween(begin: Colors.grey, end: Colors.blue)
                    .animate(_animationController),
                value: _animationController.value,
              ),
            )
          ],
        ),
      ),
    );
  }
}
