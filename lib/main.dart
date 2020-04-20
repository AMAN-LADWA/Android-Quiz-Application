import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return MyAppState();
    }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizzApp'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
