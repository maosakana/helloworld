import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Container(
        child: Hero(
          tag: '$index',
          child: Container(
            child: Center(
              child: Text(
                '$index',
                style: TextStyle(fontSize: 28.0),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
