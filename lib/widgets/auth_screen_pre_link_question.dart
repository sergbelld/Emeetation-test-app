import 'package:flutter/material.dart';

class PreLinkQuestion extends StatelessWidget {
  PreLinkQuestion({@required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
