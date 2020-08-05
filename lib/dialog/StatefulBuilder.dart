import 'package:flutter/material.dart';

class StatefulBuilder extends StatefulWidget {

  final StatefulWidgetBuilder builder;

  const StatefulBuilder({
    Key key,
    @required this.builder
  }):assert(builder != null), super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StatefulBuilderState();
  }

}

class _StatefulBuilderState extends State<StatefulBuilder> {

  @override
  Widget build(BuildContext context) {
    return widget.builder(context,setState);
  }

}