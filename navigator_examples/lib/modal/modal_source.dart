import 'package:flutter/material.dart';

import 'package:navigator_examples/modal/modal_destination.dart';

class ModalSourceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Modally Present Example'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Present new screen modally'),
          onPressed: () => Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new ModalDestinationScreen(),
              fullscreenDialog: true,
            )
          ),
        ),
      ),
    );
  }
}