import 'package:flutter/material.dart';

import 'package:animation_examples/fadainout/fadainout.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Animation Examples',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Animation Examples'),
    );
  }
}

enum _AnimationExamples {
  fadeInOut,
}

String _screenName(_AnimationExamples example) {
  switch (example) {
    case _AnimationExamples.fadeInOut:
      return 'Fade a Widget in and out';
  }
  return '';
}

Widget _screen(_AnimationExamples example) {
  switch (example) {
    case _AnimationExamples.fadeInOut:
      return new FadeInOutScreen();
  }
  return null;
}

class MyHomePage extends StatelessWidget {
  final String title;

  final List<_AnimationExamples> examples = [
    _AnimationExamples.fadeInOut,
  ];

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new ListView.builder(
        itemCount: examples.length,
        itemBuilder: (context, index) => new ListTile(
          title: new Text(_screenName(examples[index])),
          onTap: () => Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => _screen(examples[index])
            ),
          ),
        ),
      ),
    );
  }
}