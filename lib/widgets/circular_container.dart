import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: 300,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(75),
                bottomRight: Radius.circular(75))),
      );
}
