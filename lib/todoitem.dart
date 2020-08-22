import 'package:flutter/material.dart';
import 'package:helloworld/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo =
      ToDo(title: 'todo_title', description: 'todo_description', isDone: false);

  ToDoItem(todo);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}
