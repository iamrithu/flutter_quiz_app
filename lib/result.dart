import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  final int resultScore;

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

  Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        value,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
