import 'package:flutter/material.dart';

import 'package:navigator_examples/return_data/selection_screen.dart';

class BackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Returning Data'),
      ),
      body: new Center(
        child: new SelectionButton(),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () => _navigateAndDisplaySelection(context),
      child: new Text(
        'Pick an option.'
      ),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new SelectionScreen()
      )
    );

    Scaffold
      .of(context)
      .showSnackBar(new SnackBar(
        content: new Text('$result'),
      ));
  }
}
