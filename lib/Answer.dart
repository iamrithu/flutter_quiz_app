import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function() selectAns;

  Answers(this.selectAns);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: const Text(
          'Answer !',
          style: TextStyle(color: Colors.white70),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.purple[300])),
        onPressed: selectAns,
      ),
    );
  }
}
