import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';
import 'package:emeetation_test_app/widgets/header_bio.dart';

class ProfileBioBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        HeaderBio(
          text: 'Ivan Zheltov',
          color: kHeader2Color,
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
        SizedBox(height: 15.0),
        HeaderBio(
          text: 'Front End Developer',
          color: kHeader3Color,
          fontWeight: FontWeight.normal,
          fontSize: 14.0,
        ),
        SizedBox(height: 6.0),
        HeaderBio(
          text: 'Russia, Moscow',
          color: kHeader3Color,
          fontWeight: FontWeight.normal,
          fontSize: 14.0,
        ),
      ],
    );
  }
}
