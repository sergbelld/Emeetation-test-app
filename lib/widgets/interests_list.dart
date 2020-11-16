import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:emeetation_test_app/providers/interests_data.dart';
import 'package:emeetation_test_app/widgets/interest_item.dart';

class InterestsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final interestsData = Provider.of<InterestsData>(context);
    final interests = interestsData.items;

    return ListView.builder(
      itemCount: interests.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: interests[i],
        child: InterestItem(),
      ),
    );
  }
}
