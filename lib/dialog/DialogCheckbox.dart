import 'package:flutter/material.dart';

class DialogCheckbox extends StatefulWidget {

  final bool value;
  final ValueChanged<bool> onChange;

  DialogCheckbox({
    Key key,
    this.value,
    @required this.onChange,
  });

  @override
  State<StatefulWidget> createState() {
    return _DialogCheckboxState();
  }

}

class _DialogCheckboxState extends State<DialogCheckbox> {

  bool value;

  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: (v) {
        widget.onChange(v);
        setState(() {
          value = v;
        });
      },
    );
  }

}