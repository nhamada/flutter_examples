import 'package:flutter/material.dart';

class RoutingDestinationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Routing Destination'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Back'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
