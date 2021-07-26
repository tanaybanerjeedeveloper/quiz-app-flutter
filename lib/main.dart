import 'package:flutter/material.dart';

//importing custom widgets
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  final _questionsAndAnswers = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 5},
        {'text': 'Violet', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your fav pet?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 10},
        {'text': 'Bird', 'score': 5}
      ]
    },
    {
      'questionText': 'Who is your fav instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Andrei', 'score': 1},
        {'text': 'Angela', 'score': 3},
        {'text': 'Jacob', 'score': 10}
      ]
    }
  ];

  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  void _buttonPressed(int score) {
    _totalScore += score;
    setState(() {
      _index = _index + 1;
    });
    if (_index < _questionsAndAnswers.length) {
      print('there are more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Qizzy')),
        body: (_index < _questionsAndAnswers.length)
            ? Quiz(
                questionText: _questionsAndAnswers[_index]['questionText'],
                questionsAndAnswers: _questionsAndAnswers,
                index: _index,
                buttonPressed: _buttonPressed,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
