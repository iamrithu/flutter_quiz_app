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

var questionIndex = 0;

class _MyAppState extends State<MyApp> {
  void _answerQuetion() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = {
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
      }
    };

    print(questions);

    return MaterialApp(
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: const Text('First Quiz App'),
        //     backgroundColor: Colors.pink,
        //   ),
        //   body: Column(
        //     children: [
        //       Questions(
        //         questions[0]["questionsCollection"],
        //       ),
        //       Answers(_answerQuetion),
        //       Answers(_answerQuetion),
        //       Answers(_answerQuetion),
        //     ],
        //   ),
        // ),
        );
  }
}
