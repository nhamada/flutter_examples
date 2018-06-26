import 'package:flutter/cupertino.dart';

class PageWithoutNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'No Navigation Bar',
              style: new TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            new CupertinoButton(
              child: new Text('Back'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}