import 'package:flutter/material.dart';

import 'package:navigator_examples/new_screen_and_back/first.dart';
import 'package:navigator_examples/send_data/list_screen.dart';
import 'package:navigator_examples/return_data/back_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new NavigationDemoHomePage(title: 'Navigation Demo'),
    );
  }
}

class NavigationDemoHomePage extends StatelessWidget {
  NavigationDemoHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new _NavigationDemoListWidget(),
    );
  }
}

enum _NavigationDemo {
  newScreenAndBack,
  sendData,
  returnData,
}

String _demoName(_NavigationDemo demo) {
  switch (demo) {
    case _NavigationDemo.newScreenAndBack:
      return 'Navigate to a new screen and back';
    case _NavigationDemo.sendData:
      return 'Send data to a new screen';
    case _NavigationDemo.returnData:
      return 'Return data from a screen';
    default:
      return 'Unknown';
  }
}

class _NavigationDemoListWidget extends StatelessWidget {

  final List<_NavigationDemo> _demos = [
    _NavigationDemo.newScreenAndBack,
    _NavigationDemo.sendData,
    _NavigationDemo.returnData,
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (context, index) {
        return new ListTile(
          title: new Text(_demoName(_demos[index])),
          onTap: () => _navigateToDemoScreen(context, _demos[index]),
        );
      },
      itemCount: _demos.length,
    );
  }

  _navigateToDemoScreen(BuildContext context, _NavigationDemo demo) {
    switch (demo) {
      case _NavigationDemo.newScreenAndBack:
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new FirstScreen())
        );
        break;
      case _NavigationDemo.sendData:
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new TodoListScreen())
        );
        break;
      case _NavigationDemo.returnData:
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new BackScreen())
        );
        break;
    }
  }
}
