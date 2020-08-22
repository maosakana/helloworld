import 'package:flutter/material.dart';
import 'package:helloworld/detailPage.dart';
import 'package:helloworld/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo = ToDo(title: null, description: null, isDone: false);
  ToDoItem(todo);

  get title => 'title1';
  get description => 'description1';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: '$ToDo($title)',
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
                      '$ToDo($title)',
                      style: TextStyle(fontSize: 28.0),
                    ),
                    Text(
                      '$ToDo($description)',
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
                  builder: (_) => DetailPage(todo),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
