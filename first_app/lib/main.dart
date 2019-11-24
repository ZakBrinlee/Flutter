import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'Javascript or Kotlins?',
      'answers': ['Javascript', 'Kotlin']
    },
    {
      'questionText': 'Favorite Car?',
      'answers': ['190E', 'Monte Carlo SS']
    },
    {
      'questionText': 'Who is the coolest dog?',
      'answers': ['Chica', 'Chica']
    },
  ];

  var _questionIndex = 0;
  var answers = [];

  void _answerQuestion(String answer) {
    answers.add(answer);
    print('AQ called');
    if (_questionIndex > _questions.length) {
      setState(() {
        _questionIndex = 0;
      });
    } else {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    print(_questionIndex);
    print(answers);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World!'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(answers),
      ),
    );
  }
}
