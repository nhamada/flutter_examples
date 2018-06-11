import 'package:flutter/material.dart';

import 'package:navigator_examples/send_data/detail_screen.dart';
import 'package:navigator_examples/send_data/todo.dart';

class TodoListScreen extends StatelessWidget {
  final todos = new List<Todo>.generate(
    20,
    (i) => new Todo(
      'Todo $i',
      'A description of what needs to be done for Todo $i'
    )
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Todo List'),
      ),
      body: new ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => new ListTile(
          title: new Text(todos[index].title),
          onTap: () => Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new TodoDetailScreen(todo: todos[index])
            )
          ),
        ),
      ),
    );
  }
}