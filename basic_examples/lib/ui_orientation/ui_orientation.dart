import 'package:flutter/material.dart';

class UIOrientationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('UI Orientation Demo'),
      ),
      body: new OrientationBuilder(
        builder: (context, orientation) => new GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: new List.generate(100, (index) => new Center(
              child: new Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            )
          ),
        ),
      ),
    );
  }
}