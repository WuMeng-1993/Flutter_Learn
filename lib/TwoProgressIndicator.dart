import 'package:flutter/material.dart';

class TwoProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("ProgressIndicator"),
        ),
        body: Column(
          children: <Widget>[
            LinearProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(Colors.red),
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.green),
              value: 0.5,
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(Colors.yellow),
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.green,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              value: 0.7,
              strokeWidth: 12,
            ),
            SizedBox(
              width: 200,
              height: 22,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.red),
              ),
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.yellow),
                value: 0.6,
              ),
            )
          ],
        ),
      );
  }

}