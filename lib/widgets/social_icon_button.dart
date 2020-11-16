import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';

class SocialIconButton extends StatelessWidget {
  SocialIconButton({
    @required this.color,
    @required this.borderColor,
    @required this.onPressed,
    @required this.icon,
    @required this.height,
    @required this.width,
  });

  final Color color;
  final Color borderColor;
  final Function onPressed;
  final Widget icon;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: kSocialIconsBackgroundColor,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          width: 1.5,
          color: borderColor,
          style: BorderStyle.solid,
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
