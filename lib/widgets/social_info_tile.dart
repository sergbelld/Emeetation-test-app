import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';
import 'package:emeetation_test_app/widgets/header_bio.dart';

class SocialInfoTile extends StatelessWidget {
  SocialInfoTile({
    @required this.topText,
    @required this.bottomText,
  });

  final String topText;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 54.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          HeaderBio(
            text: topText,
            fontSize: 24,
            color: kHeader2Color,
          ),
          SizedBox(width: 5),
          HeaderBio(
            text: bottomText,
            fontSize: 14.0,
            color: kHeader3Color,
          ),
        ],
      ),
    );
  }
}
