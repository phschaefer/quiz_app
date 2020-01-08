import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green,
        highlightColor: Colors.teal,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
