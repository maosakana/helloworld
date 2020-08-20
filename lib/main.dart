import 'package:flutter/material.dart';
import 'package:helloworld/detailPage.dart';

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
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Hero(
                tag:  'detail_$index',
                child: ListTile(
                  title: Padding(
                    child: Text(
                      '$index',
                      style: TextStyle(fontSize: 28.0),
                    ),
                    padding: EdgeInsets.all(16.0),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(index),
                      ),
                    );
                  },
                ),
              ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
