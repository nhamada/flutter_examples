import 'package:flutter/material.dart';

import 'package:basic_examples/tabs/tabs.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Design Basics Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new DemoListPage(title: 'Design Basics Demo'),
    );
  }
}

enum _BasicDemoItem {
  tabs,
}

String _demoPageName(_BasicDemoItem item) {
  switch (item) {
    case _BasicDemoItem.tabs:
      return 'Working with Tabs';
  }
  return '';
}

Widget _demoPage(_BasicDemoItem item) {
  switch (item) {
    case _BasicDemoItem.tabs:
      return new ExampleTabScreen();
  }
  return null;
}

class DemoListPage extends StatelessWidget {
  final String title;

  final List<_BasicDemoItem> examples = [
    _BasicDemoItem.tabs,
  ];

  DemoListPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new ListView.builder(
        itemCount: examples.length,
        itemBuilder: (context, index) =>  new ListTile(
          title: new Text(_demoPageName(examples[index])),
          onTap: () => Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => _demoPage(examples[index])
            ),
          ),
        ),
      ),
    );
  }
}
