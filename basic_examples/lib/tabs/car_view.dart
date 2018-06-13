import 'package:flutter/material.dart';

class CarView extends StatelessWidget {
  static IconData icon = Icons.directions_car;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Icon(icon),
    );
  }
}
