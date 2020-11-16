import 'dart:io';

import 'package:flutter/material.dart';

import 'package:emeetation_test_app/util/constants.dart';
import 'package:emeetation_test_app/pages/profile_screen.dart';
import 'package:emeetation_test_app/widgets/search_field.dart';
import 'package:emeetation_test_app/widgets/interests_list.dart';

class InterestsScreen extends StatefulWidget {
  static const routeName = '/interests=screen';

  @override
  _InterestsScreenState createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        title: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'What are you interested in?',
              style: TextStyle(
                color: kHeader2Color,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: SearchField(),
          ),
          Flexible(flex: 10, child: InterestsList()),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.topRight,
                  heightFactor: Platform.isIOS ? 2.50 : 0.0,
                  child: Padding(
                    padding: Platform.isIOS
                        ? const EdgeInsets.only(right: 14.0)
                        : const EdgeInsets.only(right: 22.0),
                    child: FloatingActionButton(
                      backgroundColor: Theme.of(context).primaryColor,
                      elevation: 0.0,
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        size: 40,
                      ),
                      foregroundColor: Color.fromRGBO(55, 49, 96, 1),
                      onPressed: () {
                        Navigator.of(context)
                            .popAndPushNamed(ProfileScreen.routeName);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
