import 'package:flutter/material.dart';

import 'package:emeetation_test_app/widgets/upload_video_button.dart';

class BodyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.67,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
            )),
        child: Align(
          alignment: Alignment(0.82, -1.0),
          child: Transform.translate(
            offset: const Offset(0.0, -18.0),
            child: UploadVideoButton(),
          ),
        ),
      ),
    );
  }
}
