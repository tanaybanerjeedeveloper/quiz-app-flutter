import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are nice and innocent';
    } else if (totalScore <= 12) {
      resultText = 'You are pretty likeable';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text(
            'Restart Quiz',
          ),
          textColor: Colors.deepPurple,
        )
      ],
    );
  }
}
