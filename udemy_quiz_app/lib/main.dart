import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App Bar'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('The question!'),
            RaisedButton(
              onPressed: () {},
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
