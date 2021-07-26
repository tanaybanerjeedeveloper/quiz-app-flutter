import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function buttonPressed;

  Answer(this.answerText, this.buttonPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: buttonPressed,
        child: Text(answerText),
      ),
    );
  }
}
