import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Button"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                child: new Text("RaisedButton"),
                onPressed: () {},
              ),
              new FlatButton(
                child: new Text("FlatButton"),
                onPressed: () {},
              ),
              new OutlineButton(
                child: new Text("OutlineButton"),
                onPressed: () {},
              ),
              new IconButton(
                icon: new Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              new RaisedButton.icon(
                  onPressed: () {},
                  icon: new Icon(Icons.send),
                  label: new Text("发送")),
              new FlatButton.icon(
                  onPressed: () {},
                  icon: new Icon(Icons.add),
                  label: new Text("添加")),
              new OutlineButton.icon(
                  onPressed: () {},
                  icon: new Icon(Icons.info),
                  label: new Text("详情")),
              new RaisedButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: new Text("Submit"),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
