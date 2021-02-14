import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedHandler;
  final String buttonText;

  Answer(this.selectedHandler, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        onPressed: selectedHandler,
        child: Text(buttonText),
      ),
    );
  }
}
