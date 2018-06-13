import 'package:flutter/material.dart';

class BikeView extends StatelessWidget {
  static IconData icon = Icons.directions_bike;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Icon(icon),
    );
  }
}
