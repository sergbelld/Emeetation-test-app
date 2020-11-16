import 'package:flutter/material.dart';

import 'package:emeetation_test_app/widgets/social_info_tile.dart';

class SocialInfoArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 100.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.5, color: Colors.grey),
            bottom: BorderSide(width: 0.5, color: Colors.grey),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SocialInfoTile(
              topText: '100',
              bottomText: 'videos',
            ),
            Container(
              height: 68.0,
              child: VerticalDivider(
                thickness: 0.5,
                color: Colors.grey,
              ),
            ),
            SocialInfoTile(
              topText: '20',
              bottomText: 'likes',
            ),
            Container(
              height: 68.0,
              child: VerticalDivider(
                thickness: 0.5,
                color: Colors.grey,
              ),
            ),
            SocialInfoTile(
              topText: '42',
              bottomText: 'followers',
            ),
          ],
        ),
      ),
    );
  }
}
