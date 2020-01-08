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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ],
    },
  ];

  int _index = 0;
  int _totalScore=0;
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
                questions: _questions)
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

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questions.elementAt(nextQuestion());
    });
  }
}
