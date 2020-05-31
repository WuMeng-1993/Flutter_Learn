import 'package:flutter/material.dart';

class ScaffoldRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ScaffoldRouteState();
  }
}

class _ScaffoldRouteState extends State<ScaffoldRoute>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List tabs = ["新闻", "历史", "图片"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      switch(_tabController.index){
        case 1:
        case 2:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP Name"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
          )
        ],
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.dashboard, color: Colors.white),
              onPressed: () {
                // 打开抽屉菜单
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 5.0),
          );
        }).toList(),
      ),
    );
  }
}
