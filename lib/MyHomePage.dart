import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quizzy')),
      body: Column(
        children: [Text('question'), Text('answers')],
      ),
    );
  }
}
