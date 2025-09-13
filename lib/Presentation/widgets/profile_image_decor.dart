import 'package:flutter/cupertino.dart';

Widget profileImage(
  String imagePath,
  double width,
  double height,
  Color borderColor,
) {
  return Container(
    width: width,
    height: height,
    padding: EdgeInsets.all(2),
    // thickness of the border
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: borderColor, width: 2),
    ),
    child: ClipOval(
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    ),
  );
}
