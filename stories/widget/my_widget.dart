import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String title;
  final String description;

  MyWidget({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title, style: TextStyle(fontSize: 24)),
        SizedBox(height: 10),
        Text(description),
      ],
    );
  }
}
