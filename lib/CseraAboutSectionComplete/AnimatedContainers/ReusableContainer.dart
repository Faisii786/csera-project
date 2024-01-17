import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Color color;

  ReusableContainer({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
