import 'package:flutter/material.dart';

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
      home: Scaffold(body: ListState()),
    );
  }
}

class ListState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                child: Text('$index', style: TextStyle(fontSize:28.0),),
                padding:  EdgeInsets.all(10.0),),
              );},
          itemCount: 10,),
     );
  }
}
