import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';
import 'package:emeetation_test_app/providers/interests_data.dart';
import 'package:emeetation_test_app/widgets/interest_tag.dart';
import 'package:emeetation_test_app/widgets/header_bio.dart';

class InterestsTagsCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final interestsData = Provider.of<InterestsData>(context);
    final interests = interestsData.items;
    final filteredInterests =
        interests.where((interest) => interest.isFavorite == true).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderBio(
                  text: 'Interests',
                  color: kHeader2Color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 284.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10.0,
              runSpacing: 8.0,
              children:
                  List<Widget>.generate(filteredInterests.length, (int i) {
                return InterestTag(
                  text: filteredInterests[i].title,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
