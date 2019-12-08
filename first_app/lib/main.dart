import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World!'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[700],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(30.0),
            child: Text(
              "Widget 1",
              style: TextStyle(fontFamily: 'Odibee'),
            ),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(30.0),
            child: Text(
              "Widget 2",
              style: TextStyle(fontFamily: 'Odibee'),
            ),
          ),
          Container(
            color: Colors.pink,
            padding: EdgeInsets.all(30.0),
            child: Text(
              "Widget 3",
              style: TextStyle(fontFamily: 'Odibee'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
