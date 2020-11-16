import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';

class InterestTag extends StatelessWidget {
  InterestTag({
    @required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(112, 23, 225, 0.1),
            spreadRadius: 0.0,
            blurRadius: 10.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
        child: Text(
          text,
          style: TextStyle(
            color: kHeader2Color,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
