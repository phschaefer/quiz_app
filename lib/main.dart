import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz_App'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Text('The Question: ...'),
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Answer 1: '),
                    onPressed: null,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Answer 2: '),
                    onPressed: null,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Answer 3: '),
                    onPressed: null,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Answer 4: '),
                    onPressed: null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
