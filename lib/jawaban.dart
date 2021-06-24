import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final Function getJawaban;
  final String textJawaban;

  Jawaban(this.getJawaban, this.textJawaban);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: getJawaban,
        child: Text(textJawaban),
      ),
    );
  }
}
