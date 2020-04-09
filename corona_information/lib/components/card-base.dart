import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBase extends StatelessWidget {
  String title;
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title == null ? '':title),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
            child: Text(
              text == null ? '':text,
              style: TextStyle(
                  color: color == null ? Colors.black:color,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }

  CardBase({this.title, this.text, this.color});
}
