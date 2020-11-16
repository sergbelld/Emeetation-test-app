import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';
import 'package:emeetation_test_app/widgets/social_icon_button.dart';

class SocialIconsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SocialIconButton(
          height: 50.0,
          width: 50.0,
          color: kSocialIconsBackgroundColor,
          borderColor: kSocialIconsBackgroundColor,
          onPressed: () {},
          icon: SvgPicture.asset(
            kFacebookLogo,
            height: 19.88,
            width: 10.75,
          ),
        ),
        SocialIconButton(
          height: 50.0,
          width: 50.0,
          color: kSocialIconsBackgroundColor,
          borderColor: kSocialIconsBackgroundColor,
          onPressed: () {},
          icon: SvgPicture.asset(
            kLinkedinLogo,
            height: 18,
            width: 18,
          ),
        ),
        SocialIconButton(
          height: 50.0,
          width: 50.0,
          color: kSocialIconsBackgroundColor,
          borderColor: kSocialIconsBackgroundColor,
          onPressed: () {},
          icon: SvgPicture.asset(
            kInstagramLogo,
            height: 24,
            width: 24,
          ),
        ),
      ],
    );
  }
}
