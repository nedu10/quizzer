import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function changeQuestion;
  final int questionNumb;

  Quiz(@required this.questions, @required this.changeQuestion,
      @required this.questionNumb);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionNumb]['questionText']),
      ...(questions[questionNumb]['answerOption'] as List<Map<String, Object>>)
          .map((e) => Answer(() => changeQuestion(e['score']), e['text']))
          .toList()
    ]);
  }
}
