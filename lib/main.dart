import 'package:flutter/material.dart';
import 'Questions.dart';

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
  void _answerQuetion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your name',
      'what is your full name',
      'whit is your favorite food',
      'who is favorite actor'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('iam rithi'),
        ),
        body: Column(
          children: [
            Questions(
              questions[_questionIndex],
            ),
            ElevatedButton(
              child: const Text('Answer !'),
              onPressed: _answerQuetion,
            ),
            ElevatedButton(
              child: const Text('Answer 2'),
              onPressed: () => print('i am mahesh'),
            ),
            ElevatedButton(
              child: const Text('Answer 3'),
              onPressed: () {
                setState(() {
                  _questionIndex += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
