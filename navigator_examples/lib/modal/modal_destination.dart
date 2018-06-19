import 'package:flutter/material.dart';

class ModalDestinationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Detail Example'),
      ),
      body: new Center(
        child: new Text('Modally present!'),
      ),
    );
  }
}