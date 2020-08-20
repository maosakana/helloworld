import 'package:flutter/material.dart';
import 'package:helloworld/detailPage.dart';

class ListItem extends StatelessWidget {
  ListItem(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: 'detail_$index',
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
              child: Text(
                '$index',
                style: TextStyle(fontSize: 28.0),
              ),
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
      ),
    );
  }
  }