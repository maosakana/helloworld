import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
            child: Text('$index', style: TextStyle(fontSize: 28.0),),
          )
      ),
    );
  }
}
