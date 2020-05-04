import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Image"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Image(
              image: AssetImage("images/avatar.jpg"),
              width: 100.0,
            ),
            new Image.asset(
              "images/avatar.jpg",
              width: 100.0,
            ),
            // 从网络加载图片
            new Image(
              image: NetworkImage(
                  "https://gw.alicdn.com/tfs/TB1iMs6DNz1gK0jSZSgXXavwpXa-290-130.gif"),
              width: 200.0,
            ),
            new Image.network(
              "https://gw.alicdn.com/tfs/TB1iMs6DNz1gK0jSZSgXXavwpXa-290-130.gif",
              width: 230.0,
            )
          ],
        ),
      ),
    );
  }
}
