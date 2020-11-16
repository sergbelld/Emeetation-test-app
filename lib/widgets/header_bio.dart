import 'package:flutter/material.dart';

class HeaderBio extends StatelessWidget {
  HeaderBio({
    this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  final String text;
  final Color color;
  final double fontSize;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        maxLines: 1,
        style: TextStyle(
          color: color,
          fontFamily: 'Source Sans Pro',
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
