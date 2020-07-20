import 'package:flutter/material.dart';

class FutureBuilderTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder"),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: mockNetworkData(),
          builder: (BuildContext context,AsyncSnapshot snapshot){
            // 请求已完成
            if(snapshot.connectionState == ConnectionState.done) {
              if(snapshot.hasError) {
                // 请求失败，显示错误
                return Text("Error:${snapshot.error}");
              } else{
                // 请求成功，显示数据
                return Text("Contents:${snapshot.data}");
              }
            } else{
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<String> mockNetworkData() async {
    return Future.delayed(Duration(seconds: 6),() => "我是从互联网上获取的数据");
  }

}