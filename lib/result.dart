import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get displayedText {
    String text;
    if (totalScore <= 6) {
      text = 'You dont know chinedu at all';
    } else if (totalScore <= 10) {
      text =
          'You tried. But there is still alot to know about chinedu. He\'s complicated';
    } else if (totalScore <= 14) {
      text =
          'You know alot about chinedu. You must be one of his close friends.';
    } else {
      text = 'Congratulations!!! You know alot about chinedu.';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        displayedText,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
