import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> pertanyaan;
  final Function jawaban;
  final int indexPertanyaan;

  Quiz({this.pertanyaan, this.jawaban, this.indexPertanyaan});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Pertanyaan(
          pertanyaan[indexPertanyaan]['textPertanyaan'],
        ),
        ...(pertanyaan[indexPertanyaan]['textJawaban']
                as List<Map<String, Object>>)
            .map((jawab) {
          return Jawaban(() => jawaban(jawab['score']), jawab['text']);
        }).toList(),
      ],
    );
  }
}
