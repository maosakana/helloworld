import 'package:flutter/material.dart';
import 'package:helloworld/detailPage.dart';
import 'package:helloworld/listItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(body: ListPage()),
    );
  }
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListItem(index);
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
