import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  var _questions = [
    {
      'questionText': 'Where do you currently work?',
      'answerOption': [
        {'text': 'Crenet TechLabs', 'score': 4},
        {'text': 'Pertinence Group', 'score': 6},
        {'text': 'Realvest', 'score': 8},
        {'text': 'Crevetal', 'score': 2}
      ]
    },
    {
      'questionText': 'Who is your crush?',
      'answerOption': [
        {'text': 'Millicent', 'score': 6},
        {'text': 'Gika', 'score': 4},
        {'text': 'Favour', 'score': 2},
        {'text': 'Ruth', 'score': 8}
      ]
    },
    {
      'questionText': 'What is your favourite primary color?',
      'answerOption': [
        {'text': 'Red', 'score': 2},
        {'text': 'Blue', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'Ruth', 'score': 8}
      ]
    }
  ];
  var _questionNumb = 0;
  var _totalScore = 0;
  void _changeQuestion(int score) {
    _totalScore += score;
    if (_questionNumb < _questions.length) {
      setState(() {
        _questionNumb = _questionNumb + 1;
      });
      print(_questionNumb);
    } else {
      print('No more questions');
    }
  }

  void _resetGame() {
    setState(() {
      _questionNumb = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quizzer'),
          ),
          body: _questionNumb < _questions.length
              ? Quiz(_questions, _changeQuestion, _questionNumb)
              : Result(_totalScore, _resetGame)),
    );
  }
}
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Quizzer'),
//         ),
//         body: Column(children: [
//           Text('The Question?'),
//           RaisedButton(
//             onPressed: null,
//             child: Text('Answer1'),
//           ),
//           RaisedButton(
//             onPressed: null,
//             child: Text('Answer1'),
//           ),
//           RaisedButton(
//             onPressed: null,
//             child: Text('Answer1'),
//           ),
//         ]),
//       ),
//     );
//   }
// }
