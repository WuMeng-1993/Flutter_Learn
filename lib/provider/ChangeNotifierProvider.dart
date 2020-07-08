import 'package:flutter/material.dart';
import 'package:flutterapp1/provider/InheritedProvider.dart';

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {

  final T data;
  final Widget child;

  ChangeNotifierProvider({
    Key key,
    this.data,
    this.child
  });

  static T of<T>(BuildContext context) {
    final type = _typeOf<InheritedProvider<T>>();
    final provider = context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>();
    return provider.data;
  }

  @override
  _ChangeNotifierProviderState<T> createState() {
    return new _ChangeNotifierProviderState();
  }

}

class _ChangeNotifierProviderState<T extends ChangeNotifier> extends State<ChangeNotifierProvider<T>> {


  @override
  Widget build(BuildContext context) {
    return InheritedProvider<T> (
      data: widget.data,
      child: widget.child,
    );
  }

  @override
  void initState() {
    widget.data.addListener(update);
    super.initState();
  }

  void update() {
    setState(() => {});
    super.initState();
  }

  @override
  void didUpdateWidget(ChangeNotifierProvider<T> oldWidget) {
    if(widget.data != oldWidget.data) {
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    widget.data.removeListener(update);
    super.dispose();
  }

}
