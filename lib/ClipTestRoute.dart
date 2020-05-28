import 'package:flutter/material.dart';

class ClipTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 头像
    Widget avatar = Image.asset(
      "images/avatar.jpg",
      width: 100,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Clip组件"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            avatar,
            ClipOval(child: avatar),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: avatar,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5,
                  child: avatar,
                ),
                Text("你好世界", style: TextStyle(color: Colors.blue))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRect(
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: 0.5,
                    child: avatar,
                  ),
                ),
                Text("你好,世界",style: TextStyle(color: Colors.orange))
              ],
            )
          ],
        ),
      ),
    );
  }
}
