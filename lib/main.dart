import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var question = [
    'What \'s your favourite color?',
    'What \'s your favourite place?'
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    const double padding = 16.0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz_App'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(question[index]),
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Answer 1: '),
                    onPressed: answerQuestion
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Answer 2: '),
                    onPressed: answerQuestion,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Answer 3: '),
                    onPressed: answerQuestion,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Answer 4: '),
                    onPressed: answerQuestion,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  int nextQuestion(){
    if (index < question.length-1){
      return index++;
    }
    return index = 0;
  }

  void answerQuestion(){
    setState(() {
      question.elementAt(nextQuestion());
      print(index);
    });
  }
}
