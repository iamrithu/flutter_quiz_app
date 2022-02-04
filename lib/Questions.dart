import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  late String questionText;
  //const Questions({Key? key}) : super(key: key);

  Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    print('rithi');
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(10.4),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
