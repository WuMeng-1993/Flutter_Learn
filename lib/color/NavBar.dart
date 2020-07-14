import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  final String title;
  final Color color;

  NavBar({Key key, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          minWidth: double.infinity,
          minHeight: 52
        ),
        decoration: BoxDecoration(
          color: color,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color.computeLuminance() < 0.5 ? Colors.white : Colors.black,
          ),
        ),
      alignment: Alignment.center,
    );
  }

}