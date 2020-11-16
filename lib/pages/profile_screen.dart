import 'package:flutter/material.dart';

import 'package:emeetation_test_app/widgets/profile_image.dart';
import 'package:emeetation_test_app/widgets/profile_body_box.dart';
import 'package:emeetation_test_app/widgets/primary_profile_info.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            ProfileImage(),
            BodyBox(),
            PrimaryProfileInfo(),
          ],
        ),
      ),
    );
  }
}
