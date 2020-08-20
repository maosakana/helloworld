import 'package:flutter/material.dart';
import 'package:helloworld/detailPage.dart';

class MyListItem extends StatelessWidget {
  const MyListItem(this.idx);

  final int idx;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        child: Text(
          '$idx',
          style: TextStyle(fontSize: 28.0),
        ),
        padding: EdgeInsets.all(16.0),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(idx),
          ),
        );
      },
    )
  }
}