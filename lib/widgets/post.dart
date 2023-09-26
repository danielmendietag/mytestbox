import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            color: Color.fromARGB(255, 255, 0, 0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}
