import 'package:flutter/material.dart';

import 'package:emeetation_test_app/widgets/profile_bio_area.dart';
import 'package:emeetation_test_app/widgets/profile_top_bar.dart';
import 'package:emeetation_test_app/widgets/social_info_area.dart';
import 'package:emeetation_test_app/widgets/interests_tags_cloud.dart';

class PrimaryProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(flex: 2, child: ProfileTopBar()),
        Flexible(flex: 1, child: ProfileBio()),
        Flexible(flex: 1, child: SocialInfoArea()),
        Flexible(flex: 2, child: InterestsTagsCloud()),
      ],
    );
  }
}
