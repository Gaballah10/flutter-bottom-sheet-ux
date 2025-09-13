import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ux_bottom_dialog/Presentation/widgets/profile_image_decor.dart';

import '../../core/models/user_comment_model.dart';

Widget commentItem(UserCommentModel item) {
  return Padding(
    padding: EdgeInsetsDirectional.symmetric(horizontal: 0, vertical:8),
    child: Row(
      children: [
        profileImage(item.imagePath, 50.0, 50.0, Colors.white),
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  item.userName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 5),
                SvgPicture.asset("assets/icons/ic_time_splitter.svg"),
                SizedBox(width: 5),
                Text(
                  item.time,
                  style: TextStyle(
                    color: Color(0xFF484D54),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            SizedBox(height: 4),
            Text(
              item.comment,
              style: TextStyle(
                color: Color(0xFF484D54),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        Spacer(),
        Row(
          children: [
            Text(
              "Reply",
              style: TextStyle(
                color: Color(0xFF484D54),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 20),
            GestureDetector(
              onTap: (){},
              child: SvgPicture.asset("assets/icons/ic_like_comment_item.svg"),
            )
          ],
        ),
      ],
    ),
  );
}
