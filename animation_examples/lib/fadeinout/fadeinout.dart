import 'package:flutter/material.dart';

class FadeInOutScreen extends StatefulWidget {
  @override
  State createState() => new _FadeInOutState();
}

class _FadeInOutState extends State<FadeInOutScreen> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Fade In Out Widget'),
      ),
      body: new Center(
        child: new AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: new Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        child: new Icon(Icons.flip),
        tooltip: 'Toggle Opacity',
      ),
    );
  }
}