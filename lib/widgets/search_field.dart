import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0),
      child: TextFormField(
        style: TextStyle(color: kHeader2Color),
        cursorColor: Theme.of(context).accentColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Type interest',
          hintStyle: TextStyle(
            color: Color.fromRGBO(142, 138, 162, 1),
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
