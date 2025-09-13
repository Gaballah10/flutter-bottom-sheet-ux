import 'package:flutter/material.dart';

Widget userProfileImage(String imagePath, double width, double height) {
  return ClipOval(
    child: SizedBox(
      width:  width,
      height: height,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    ),
  );
}
