import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{
    String resultText ;
    if(resultScore<=20){
      resultText='Go Back You LOserr!!';
    }else if(resultScore<=30){
      resultText='pretty good person you are!';
    }else {
      resultText='YOU WIN COMRADE!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget>[Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(child: Text('Restart Quiz'),
        onPressed: resetHandler,),
        ],
      ),
    );
  }
}
