import 'dart:io';
import 'package:flutter/material.dart';

import 'package:emeetation_test_app/pages/interests_screen.dart';

class ProfileTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Opacity(
      opacity: 0.9,
      child: Padding(
        padding: Platform.isIOS
            ? const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 26.0)
            : const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .popAndPushNamed(InterestsScreen.routeName);
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: color,
                    size: 30,
                  ),
                ),
                Icon(
                  Icons.videocam_outlined,
                  color: color,
                  size: 36,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.create_outlined,
                  color: color,
                  size: 26,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
