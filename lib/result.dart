import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  final int resultScore;
  final Function() restart;

  String get value {
    late var text;
    if (resultScore > 5) {
      text = 'Awsome !! , Your score is ${resultScore}';
    } else if (resultScore >= 4) {
      text = 'Good , Your score is ${resultScore}';
    } else if (resultScore >= 1) {
      text = 'Not bad , Your score is ${resultScore}';
    } else {
      text = 'WTF , Your score is ${resultScore}';
    }

    return text;
  }

  Result(this.resultScore, this.restart);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text('Restart Quiz.......'),
          onPressed: restart,
        )
      ],
    ));
  }
}
