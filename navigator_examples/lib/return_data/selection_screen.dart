import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Pick a option'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(16.0),
              child: new RaisedButton(
                onPressed: ()  => Navigator.pop(context, 'Yep!'),
                child: new Text('Yep!'),
              ),
            ),
            new Padding(
              padding: new EdgeInsets.all(16.0),
              child: new RaisedButton(
                onPressed: () => Navigator.pop(context, 'Nope!'),
                child: new Text('Nope!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}