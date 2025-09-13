import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ux_bottom_dialog/Presentation/widgets/profile_image.dart';

PreferredSizeWidget appBarCustomized(String title, String userProfilePath) {
  return AppBar(
    title: Text(title),
    leading: IconButton(
      onPressed: () => {},
      icon: Icon(Icons.arrow_back_ios_new_outlined),
    ),
    actions: [
      userProfileImage(userProfilePath, 30.0, 30.0),
      SizedBox(width: 10),
    ],
  );
}
