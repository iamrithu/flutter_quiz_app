import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyAPP());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//
  final _questions = [
    {
      "questionsCollection": 'what si yout favorite food',
      "answer": [
        {"text": "Briyani", "score": 1},
        {"text": "Parota", "score": 0},
        {"text": "ChickenRice", "score": 0},
      ]
    },
    {
      "questionsCollection": 'what si yout favorite animal',
      "answer": [
        {"text": "Tiger", "score": 0},
        {"text": "Lion", "score": 1},
        {"text": "Cheeta", "score": 0},
      ]
    },
    {
      "questionsCollection": 'what si yout favorite color',
      "answer": [
        {"text": "Green", "score": 0},
        {"text": "Blue", "score": 0},
        {"text": "Red", "score": 1},
      ]
    },
    {
      "questionsCollection": 'what si yout favorite sports',
      "answer": [
        {"text": "Criket", "score": 1},
        {"text": "Football", "score": 0},
        {"text": "Kabadi", "score": 0},
      ]
    },
    {
      "questionsCollection": 'what si yout favorite bike',
      "answer": [
        {"text": "KTM", "score": 0},
        {"text": "Yamaha", "score": 1},
        {"text": "Pulsar", "score": 0},
      ]
    },
    {
      "questionsCollection": 'what si yout favorite cricketer',
      "answer": [
        {"text": "MS.Dhoni", "score": 1},
        {"text": "Virat", "score": 0},
        {"text": "Dawan", "score": 0},
      ]
    },
  ];

//
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuetion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Quiz App'),
          backgroundColor: Colors.pink,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuetion, _questionIndex, _questions)
            : Result(_totalScore),
      ),
    );
  }
}
