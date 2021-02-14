import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  var questions = [
    {
      'questionText': 'Where do you currently work?',
      'answerOption': [
        'Crenet TechLabs',
        'Pertinence Group',
        'Realvest',
        'Crevetal'
      ]
    },
    {
      'questionText': 'Who is your best crush?',
      'answerOption': ['Millicent', 'Favour', 'Gika', 'Ruth']
    },
    {
      'questionText': 'What is your best primary color?',
      'answerOption': [
        'Red',
        'Blue',
        'Green',
      ]
    }
  ];
  var _questionNumb = 0;
  void _changeQuestion() {
    setState(() {
      _questionNumb = _questionNumb + 1;
    });
    print(_questionNumb);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzer'),
        ),
        body: Column(children: [
          Question(questions[_questionNumb]['questionText']),
          ...(questions[_questionNumb]['answerOption'] as List<String>)
              .map((e) => Answer(_changeQuestion, e))
              .toList()
        ]),
      ),
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
