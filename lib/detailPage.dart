import 'package:flutter/material.dart';
import 'package:helloworld/todo.dart';

class DetailPage extends StatelessWidget {
  DetailPage(this.title, this.description);

  final ToDo todo = ToDo(title: null, description: null, isDone: false);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Container(
        child: Center(
          child: Hero(
            tag: '$title',
            child: Container(
              child: Center(
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
              ),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
