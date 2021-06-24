import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get textResult {
    if (totalScore < 10) {
      return 'Wong koplak tenan';
    }

    if (totalScore < 13) {
      return 'Wong koplak';
    }

    if (totalScore < 16) {
      return 'nggenclik';
    }

    return 'cah apikan';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              textResult,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            child: Text('Back to quiz'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
