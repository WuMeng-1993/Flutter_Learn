import 'package:flutter/material.dart';

class StreamBuilderTestRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilder"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: counter(),
          builder: (BuildContext context,AsyncSnapshot<int> snapshot){
            if(snapshot.hasError) {
              return Text("Error:${snapshot.error}");
            }
            switch(snapshot.connectionState) {
              case ConnectionState.none:
                return Text("没有Stream");
              case ConnectionState.waiting:
                return Text("等待数据");
              case ConnectionState.active:
                return Text("Data:${snapshot.data}");
              case ConnectionState.done:
                return Text("下载完成");
            }
            return null;
          },
        ),
      ),
    );
  }

  Stream<int> counter() {
    return Stream.periodic(Duration(seconds: 2),(i) {
      return i;
    });
  }

}