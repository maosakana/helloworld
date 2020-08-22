import 'package:flutter/material.dart';
import 'package:helloworld/detailPage.dart';
import 'package:helloworld/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo = ToDo(title: null, description: null, isDone: false);

  ToDoItem(todo);

  get title => 'title';

  get description => 'description';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: '$title',
        child: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            title: Padding(
              child: Material(
                child: Column(
                  children: <Widget>[
                    Text(
                      '$title',
                      style: TextStyle(fontSize: 28.0),
                    ),
                    Text(
                      '$description',
                      style: TextStyle(fontSize: 14.0),
                    )
                  ],
                ),
              ),
              padding: EdgeInsets.all(16.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailPage(title, description),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
