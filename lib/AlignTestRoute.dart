import 'package:flutter/material.dart';

class AlignTestRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align"),
      ),
      body: Container(
        width: 120,
        height: 120,
        color: Colors.blue[50],
        child: Align(
          alignment: FractionalOffset(0.2,0.6),
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }



}