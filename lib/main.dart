import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Lana Rhodes', 'score': 10},
        {'text': 'riley reids', 'score': 6},
        {'text': 'NagrajPlumber', 'score': 3},
        {'text': 'BladeBassya', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite Dog?',
      'answers': [
        {'text': 'Doggy', 'score': 10},
        {'text': 'Normal Dog', 'score': 6},
        {'text': 'kutta', 'score': 3},
        {'text': 'rony', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite bomb?',
      'answers': [
        {'text': 'RDX', 'score': 1},
        {'text': 'TNT', 'score': 6},
        {'text': 'Coronavirus', 'score': 3},
        {'text': 'Aeroplane', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite date?',
      'answers': [
        {'text': 'Sunny Leone', 'score': 1},
        {'text': 'Disha Patani', 'score': 6},
        {'text': 'Osema Dustbin Loden', 'score': 10},
        {'text': '9 11', 'score': 3}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
          _questionIndex=0;
          _totalScore=0;
        });
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    }
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizzApp'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
