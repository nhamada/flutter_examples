import 'package:flutter/material.dart';

class RoutingSourceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Routing Source'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Go'),
          onPressed: () => Navigator.pushNamed(context, '/destination'),
        ),
      ),
    );
  }
}
