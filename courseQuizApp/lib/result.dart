import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreToCalculate;
  final Function resetQuiz;

  Result(this.scoreToCalculate, this.resetQuiz);

  String get returnMessage {
    var message;

    if (scoreToCalculate < 8) {
      message = 'Ooooh, you are so kind person';
    } else if (scoreToCalculate < 11) {
      message = 'Ooooh, you are friendly';
    } else if (scoreToCalculate < 16) {
      message = 'You are a bit strange';
    } else {
      message = 'You are so bad';
    }
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            returnMessage,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text(
              'Reset Quiz',
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
