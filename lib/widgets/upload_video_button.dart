import 'dart:io';
import 'package:flutter/material.dart';

class UploadVideoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 36.0, minWidth: 114.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Color.fromRGBO(15, 249, 45, 1),
        onPressed: () {},
        child: Platform.isIOS
            ? Padding(
                padding: const EdgeInsets.only(
                    left: 4.0, right: 4.0, top: 12, bottom: 12),
                child: Text(
                  'upload video',
                  style: TextStyle(
                    color: Color.fromRGBO(55, 49, 96, 1),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            : Text(
                'upload video',
                style: TextStyle(
                  color: Color.fromRGBO(55, 49, 96, 1),
                  fontSize: 14.0,
                  fontWeight:
                      Platform.isIOS ? FontWeight.w700 : FontWeight.w900,
                ),
              ),
      ),
    );
  }
}
