import 'package:flutter/material.dart';
import 'package:helloworld/todo.dart';

class DetailPage extends StatelessWidget {
  final ToDo todo = ToDo(title: null, description: null, isDone: false);

  DetailPage(ToDo todo);

//  get title => 'title';
//  get description => 'description';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Container(
        child: Center(
          child: Hero(
            tag: '$ToDo(title)',
            child: Container(
              child: Center(
                child: Material(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '$ToDo(title)',
                        style: TextStyle(fontSize: 28.0),
                      ),
                      Text(
                        '$ToDo(description)',
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
