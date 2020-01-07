import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String answerText;
  final Function selectHandler;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        RaisedButton(
          color: Colors.green,
            child: Text(answerText),
            onPressed: selectHandler,
        ),
      ],
    );
  }
}
