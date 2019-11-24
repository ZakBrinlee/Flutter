import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final List results;

  Result(this.results);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: (results).map((result) {
          return Text(
            result,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          );
        }).toList(),
      ),
    );
  }
}
