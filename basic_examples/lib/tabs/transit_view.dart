import 'package:flutter/material.dart';

class TransitView extends StatelessWidget {
  static IconData icon = Icons.directions_transit;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Icon(icon),
    );
  }
}
