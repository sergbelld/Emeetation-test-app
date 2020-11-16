import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:emeetation_test_app/providers/interest.dart';

class InterestItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final interest = Provider.of<Interest>(context);

    return GestureDetector(
      onTap: () {
        interest.toggleFavoriteStatus();
        FocusScope.of(context).unfocus();
      },
      child: Container(
        height: 49.0,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.12),
            bottom: BorderSide(width: 0.12),
          ),
        ),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              interest.title,
              style: TextStyle(
                color: Color.fromRGBO(54, 49, 96, 1),
                fontSize: 16.0,
              ),
            ),
          ),
          trailing: interest.isFavorite == true
              ? Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.check_circle,
                    size: 20.0,
                    color: Color.fromRGBO(15, 249, 45, 1),
                  ),
                )
              : Container(
                  width: 1.0,
                ),
        ),
      ),
    );
  }
}
