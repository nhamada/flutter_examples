import 'package:flutter/material.dart';

import 'package:navigator_examples/send_data/todo.dart';

class TodoDetailScreen extends StatelessWidget {
  final Todo todo;

  TodoDetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('${todo.title}'),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Text('${todo.description}'),
      ),
    );
  }
}