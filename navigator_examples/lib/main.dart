import 'package:flutter/material.dart';

import 'package:navigator_examples/new_screen_and_back/first.dart';
import 'package:navigator_examples/send_data/list_screen.dart';
import 'package:navigator_examples/return_data/back_screen.dart';

import 'package:navigator_examples/named_route/source.dart';
import 'package:navigator_examples/named_route/destination.dart';

import 'package:navigator_examples/animations/image_screen.dart';

import 'package:navigator_examples/modal/modal_source.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => new NavigationDemoHomePage(title: 'Navigation Demo'),
        '/source': (context) => new RoutingSourceScreen(),
        '/destination': (context) => new RoutingDestinationScreen(),
      },
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
  namedRoutes,
  animations,
  presentModally,
}

String _demoName(_NavigationDemo demo) {
  switch (demo) {
    case _NavigationDemo.newScreenAndBack:
      return 'Navigate to a new screen and back';
    case _NavigationDemo.sendData:
      return 'Send data to a new screen';
    case _NavigationDemo.returnData:
      return 'Return data from a screen';
    case _NavigationDemo.namedRoutes:
      return 'Navigate with named routes';
    case _NavigationDemo.animations:
      return 'Animating a Widget across screens';
    case _NavigationDemo.presentModally:
      return 'Present new screen modally';
    default:
      return 'Unknown';
  }
}

class _NavigationDemoListWidget extends StatelessWidget {

  final List<_NavigationDemo> _demos = [
    _NavigationDemo.newScreenAndBack,
    _NavigationDemo.sendData,
    _NavigationDemo.returnData,
    _NavigationDemo.namedRoutes,
    _NavigationDemo.animations,
    _NavigationDemo.presentModally,
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
      case _NavigationDemo.namedRoutes:
        Navigator.pushNamed(context, '/source');
        break;
      case _NavigationDemo.animations:
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new ImageScreen())
        );
        break;
      case _NavigationDemo.presentModally:
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new ModalSourceScreen())
        );
        break;
    }
  }
}
