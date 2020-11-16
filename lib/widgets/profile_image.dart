import 'dart:io';

import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _deviceHeight = MediaQuery.of(context).size.height;
    final _deviceWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: Platform.isIOS ? -100 : -90,
      child: Container(
        height: Platform.isIOS ? _deviceHeight * 0.52 : _deviceHeight * 0.55,
        width: _deviceWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/profile_img_big.jpg'),
          ),
        ),
      ),
    );
  }
}
