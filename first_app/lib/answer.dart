import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        textColor: Colors.white,
        color: Colors.blueGrey,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 28),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
