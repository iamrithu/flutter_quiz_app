import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectAns;
  final String ansOption;

  Answers(this.selectAns, this.ansOption);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          ansOption,
          style: const TextStyle(color: Colors.white70),
        ),
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
        onPressed: selectAns,
      ),
    );
  }
}
