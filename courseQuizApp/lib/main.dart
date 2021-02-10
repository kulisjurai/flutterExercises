import 'package:flutter/material.dart';
import 'quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questionsAnswers = [
    {
      'question': 'What is your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'question': 'What is your favorite animal?',
      'answer': [
        {'text': 'Snake', 'score': 10},
        {'text': 'Tiger', 'score': 5},
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 1}
      ]
    },
    {
      'question': 'What is your favorite season?',
      'answer': [
        {'text': 'Winter', 'score': 10},
        {'text': 'Autumn', 'score': 5},
        {'text': 'Spring', 'score': 3},
        {'text': 'Summer', 'score': 1}
      ]
    }
  ];

  int _counter = 0;
  int _totalScore = 0;
  void changeState(int score) {
    setState(() {
      _counter < _questionsAnswers.length ? _counter++ : _counter = 0;
      _totalScore += score;
    });
  }

  void resetFunction() {
    setState(() {
      _counter = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: _counter < _questionsAnswers.length
            ? Container(
                child: Quiz(
                    questions: _questionsAnswers,
                    counter: _counter,
                    changeIndex: changeState),
              )
            : Result(_totalScore, resetFunction),
      ),
    );
  }
}
