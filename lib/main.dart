import 'package:flutter/material.dart';
import 'Questions.dart';
import './Answer.dart';

// void main() {
//   runApp(MyAPP());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

var _questionIndex = 0;

class _MyAppState extends State<MyApp> {
//
  var questions = [
    {
      "questionsCollection": 'what si yout favorite food',
      "answer": ["briyani", 'parota', "chicken"]
    },
    {
      "questionsCollection": 'what si yout favorite animal',
      "answer": ["Loin", 'Tiger', "Cheeta"]
    },
    {
      "questionsCollection": 'what si yout favorite color',
      "answer": ["Red", 'Blue', "Green"]
    },
    {
      "questionsCollection": 'what si yout favorite sports',
      "answer": ["Cricker", 'Footbas']
    },
    {
      "questionsCollection": 'what si yout favorite bike',
      "answer": ["Yamaha", 'Ktm']
    },
    {
      "questionsCollection": 'what si yout favorite cricketer',
      "answer": ["Ms", 'virat', 'Rohit']
    },
  ];

//

  void _answerQuetion() {
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Questions(
                    questions[_questionIndex]['questionsCollection'].toString(),
                  ),
                  // Answers(_answerQuetion),
                  // Answers(_answerQuetion),
                  // Answers(_answerQuetion),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((ans) {
                    return Answers(_answerQuetion, ans);
                  }),
                ],
              )
            : const Center(
                child: Text('You did'),
              ),
      ),
    );
  }
}
