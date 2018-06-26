import 'package:flutter/cupertino.dart';

class PageWithNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        middle: new Text('With Navigation Bar'),
      ),
      child: new SafeArea(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'With Navigation Bar',
                style: new TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              new CupertinoButton(
                child: new Text('Back'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}