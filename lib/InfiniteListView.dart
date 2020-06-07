import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

/// 无线刷新
class InfiniteListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _InfiniteListView();
  }
}

class _InfiniteListView extends State<InfiniteListView> {

  static const loadingTag = "##loading##";
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("无线ListView")),
      body: ListView.separated(
        itemCount: _words.length,
        itemBuilder: (context, index) {
          // 显示到底了
          if (_words[index] == loadingTag) {
            // 数据的个数小于100
            if (_words.length - 1 < 100) {
              // 加载更多的数据
              _retrieveData();
              // 显示转圈的进度条
              return Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                  ),
                ),
              );
            } else {
              // 大于100条，显示没有更多了
              return Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: Text(
                  "没有更多了",
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }
          }
          return ListTile(
            title: Text(_words[index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 2.0,
          );
        },
      ),
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        // 重新构建列表
        _words.insertAll(_words.length - 1,
            // 每次生成20个单词
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      });
    });
  }
}
