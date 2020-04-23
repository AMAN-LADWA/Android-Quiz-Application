import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  Answer(this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Answer 1'),
      onPressed: answerQuestion,
      ),
    );
  }
}