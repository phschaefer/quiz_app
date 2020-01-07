import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz_App'),
          backgroundColor: Colors.green,
        ),
        body: _index < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                index: _index,
                questions: _questions
        )
            : Result(),
      ),
    );
  }

  int nextQuestion() {
    if (_index < _questions.length) {
      return _index++;
    }
    return 0;
  }

  void _answerQuestion() {
    setState(() {
      _questions.elementAt(nextQuestion());
    });
  }
}
