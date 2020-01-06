import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _question = [
    'What \'s your favourite color?',
    'What \'s your favourite place?'
  ];

  List<String> _text = [
    'Quiz_App',
    'Answer 1: ',
    'Answer 2: ',
    'Answer 3: ',
    'Answer 4: '
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    const double _padding = 16.0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_text[0]),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(_padding),
          child: Column(
            children: <Widget>[
              Question(_question[_index]),
              Row(
                children: <Widget>[
                  RaisedButton(
                      child: Text(_text[1]), onPressed: _answerQuestion),
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text(_text[2]),
                    onPressed: _answerQuestion,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text(_text[3]),
                    onPressed: _answerQuestion,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text(_text[4]),
                    onPressed: _answerQuestion,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  int nextQuestion() {
    if (_index < _question.length - 1) {
      return _index++;
    }
    return _index = 0;
  }

  void _answerQuestion() {
    setState(() {
      _question.elementAt(nextQuestion());
      print(_index);
    });
  }
}
