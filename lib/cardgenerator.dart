import 'package:flutter/material.dart';
import 'consts.dart';

class CardGenerator extends StatelessWidget {
  final Function function;
  final Icon icon;
  final Color color;
  CardGenerator({this.function, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: function,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: color),
          margin: EdgeInsets.all(5.0),
          height: double.infinity,
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}
