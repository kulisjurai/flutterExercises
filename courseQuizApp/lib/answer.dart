import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function changeIndex;
  final String answerInBtn;

  Answer(this.changeIndex, this.answerInBtn);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: changeIndex,
        child: Text(
          answerInBtn,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
