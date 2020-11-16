import 'package:flutter/material.dart';

class ActiveLink extends StatelessWidget {
  ActiveLink({
    @required this.text,
    @required this.onTap,
    @required this.underLine,
    this.fontSize,
    this.fontWeight,
  });

  final String text;
  final Function onTap;
  final double fontSize;
  final FontWeight fontWeight;
  final bool underLine;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          decoration:
              underLine ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
    );
  }
}
