import 'package:flutter/material.dart';

class ListView2TestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(color: Colors.blue);
    Widget divider2 = Divider(color: Colors.red);

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView2"),
      ),
      body: ListView.separated(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          },
          separatorBuilder: (BuildContext context, int index) {
            return index % 2 == 0 ? divider1 : divider2;
          }),
    );
  }
}
