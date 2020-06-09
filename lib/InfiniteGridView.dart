import 'package:flutter/material.dart';

class InfiniteGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _InfiniteGridViewState();
  }
}

class _InfiniteGridViewState extends State<InfiniteGridView> {

  List<IconData> _icons = [];

  @override
  void initState() {
    super.initState();
    _retrieveIcons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InfiniteGridView"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 1),
          itemBuilder: (context, index) {
            if (index == _icons.length - 1 && _icons.length < 200) {
              _retrieveIcons();
            }
            return Icon(_icons[index]);
          }),
    );
  }

  void _retrieveIcons() {
    Future.delayed(Duration(milliseconds: 200)).then((value){
      setState(() {
        _icons.addAll([
          Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access,
          Icons.free_breakfast
        ]);
      });
    });
  }
}
