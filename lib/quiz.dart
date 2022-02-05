import 'package:flutter/material.dart';
import 'Questions.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);

  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
    this.answerQuestion,
    this.questionIndex,
    this.questions,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['questionsCollection'].toString(),
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((ans) {
          return Answers(
              () => answerQuestion(ans['score']), ans['text'].toString());
        })
      ],
    );
  }
}
