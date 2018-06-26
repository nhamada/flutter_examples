import 'package:flutter/cupertino.dart';

import 'package:page_scaffold/page_with_navigation.dart';
import 'package:page_scaffold/page_without_navigation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new WidgetsApp(
      title: 'Demo App',
      color: Color.fromARGB(255, 0, 0, 0),
      onGenerateRoute: (settings) {
        return new CupertinoPageRoute(
          settings: settings,
          builder: (context) => new SelectionPage(),
        );
      },
    );
  }
}

enum _Pages {
  withNavigationBar,
  withoutNavigationBar,
}

String _getPageName(_Pages page) {
  switch (page) {
    case _Pages.withNavigationBar:
      return 'With Navigation Bar';
    case _Pages.withoutNavigationBar:
      return 'No Navigation Bar';
  }
  return '';
}

class SelectionPage extends StatelessWidget {
  final _pages = [
    _Pages.withNavigationBar,
    _Pages.withoutNavigationBar,
  ];

  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        middle: new Text('CupertinoPageScaffold Demo'),
      ),
      child: new SafeArea(
        child: new Container(
          child: new Padding(
            padding: const EdgeInsets.all(0.0),
            child: new ListView.builder(
              itemCount: _pages.length,
              itemBuilder: (context, index) => new GestureDetector(
                child: new Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
                  child: new Text(
                    _getPageName(_pages[index]),
                    style: new TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                onTap: () => _routeToPage(context, _pages[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _routeToPage(BuildContext context, _Pages page) {
    switch (page) {
      case _Pages.withNavigationBar:
        Navigator.push(
          context,
          new CupertinoPageRoute(
            builder: (context) => new PageWithNavigation()
          )
        );
        return;
      case _Pages.withoutNavigationBar:
        Navigator.push(
          context,
          new CupertinoPageRoute(
            builder: (context) => new PageWithoutNavigation()
          )
        );
        return;
    }
  }
}
