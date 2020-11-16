import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';
import 'package:emeetation_test_app/widgets/social_icon_button.dart';
import 'package:emeetation_test_app/widgets/profile_bio_block.dart';

class ProfileBio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfileBioBlock(),
          Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 1.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SocialIconButton(
                  color: kSocialIconsColor,
                  borderColor: kSocialIconsBorderColor,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    kFacebookLogo,
                    height: 19.88,
                    width: 10.75,
                  ),
                  height: 28,
                  width: 28,
                ),
                SizedBox(
                  width: 18.0,
                ),
                SocialIconButton(
                  color: kSocialIconsColor,
                  borderColor: kSocialIconsBorderColor,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    kInstagramLogo,
                    height: 24,
                    width: 24,
                  ),
                  height: 28,
                  width: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
