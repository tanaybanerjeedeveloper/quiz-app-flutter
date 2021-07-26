import 'package:flutter/material.dart';
//importing custom widgets
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> questionsAndAnswers;
  final int index;
  final Function buttonPressed;

  Quiz(
      {this.questionText,
      this.questionsAndAnswers,
      this.index,
      this.buttonPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText),
        ...(questionsAndAnswers[index]['answers'] as List<Map<String, Object>>)
            .map(
          (ans) {
            return Answer(
              ans['text'],
              () => buttonPressed(ans["score"]),
            );
          },
        ).toList()
      ],
    );
  }
}
