import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexPertanyaan = 0;
  var _totalScore = 0;

  final _pertanyaan = [
    {
      'textPertanyaan': 'Warna favoritmu',
      'textJawaban': [
        {'text': 'Hitam', 'score': 3},
        {'text': 'Merah', 'score': 4},
        {'text': 'Kuning', 'score': 5},
        {'text': 'Hijau', 'score': 6},
      ],
    },
    {
      'textPertanyaan': 'hewan favorit anda',
      'textJawaban': [
        {'text': 'Kucing', 'score': 6},
        {'text': 'Ayam', 'score': 4},
        {'text': 'Burung', 'score': 5},
        {'text': 'Onta', 'score': 3},
      ],
    },
    {
      'textPertanyaan': 'Nama panggilanmu',
      'textJawaban': [
        {'text': 'Cah Koplak', 'score': 3},
        {'text': 'Genclik', 'score': 4},
        {'text': 'Cah Kemplu', 'score': 5},
        {'text': 'Sesuai Nama', 'score': 6},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _indexPertanyaan = 0;
      _totalScore = 0;
    });
  }

  void _jawaban(int score) {
    setState(() {
      _indexPertanyaan = _indexPertanyaan + 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NSD Mobile'),
        ),
        body: _indexPertanyaan < _pertanyaan.length
            ? Quiz(
                pertanyaan: _pertanyaan,
                jawaban: _jawaban,
                indexPertanyaan: _indexPertanyaan,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
