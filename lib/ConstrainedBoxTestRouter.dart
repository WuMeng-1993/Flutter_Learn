import 'package:flutter/material.dart';

class ConstrainedBoxTestRouter extends StatelessWidget {
  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ConstrainedBox"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ConstrainedBox(
              constraints:
                  BoxConstraints(minWidth: double.infinity, minHeight: 60.0),
              child: Container(
                height: 5.0,
                child: redBox,
              ),
            ),
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: redBox,
            ),
          ],
        ));
  }
}
