import 'package:flutter/material.dart';

class ExampleDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Drawe Demo'),
      ),
      drawer: new _DemoDrawer(),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Drawer Demo',
              style: new TextStyle(fontSize: 30.0),
            ),
            new RaisedButton(
              child: new Text('Back'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}

class _DemoDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Text('Drawer Header'),
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
          ),
          new ListTile(
            title: new Text('Item 1'),
            onTap: () => Navigator.pop(context),
          ),
          new ListTile(
            title: new Text('Item 2'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}