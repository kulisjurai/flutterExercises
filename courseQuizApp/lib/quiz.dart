import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int counter;
  final Function changeIndex;

  Quiz({this.questions, this.counter, this.changeIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[counter]['question']),
          ...(questions[counter]['answer'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(() => changeIndex(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
