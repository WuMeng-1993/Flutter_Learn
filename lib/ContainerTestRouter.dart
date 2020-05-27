import 'package:flutter/material.dart';

class ContainerTestRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 120.0),
        //constraints: BoxConstraints.tightFor(width: 200.0,height: 150.0),
        decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.red,Colors.orange],
              center: Alignment.topLeft,
              radius: 0.98
            ),
          boxShadow: [BoxShadow(
            color: Colors.black45,
            offset: Offset(2.0,2.0),
            blurRadius: 4.0
          )]
        ),
        transform: Matrix4.rotationZ(.2),
        alignment: Alignment.center,
        child: Text(
          "吴猛",
          style: TextStyle(color: Colors.blue, fontSize: 40.0),
        ),
      ),
    );
  }
}
