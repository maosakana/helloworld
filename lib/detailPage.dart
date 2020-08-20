import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Container(
        child: Center(
          child: Hero(
            tag: 'detail_$index',
            child: Container(
              child: Center(
                child: Material(
                child: Text(
                  '$index',
                  style: TextStyle(fontSize: 28.0),
                ),
              ),
              ),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
