import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ux_bottom_dialog/Presentation/widgets/profile_image_decor.dart';
import '../../core/models/user_comment_model.dart';
import 'comment_item.dart';

void postCommentsDialog(BuildContext context, List<UserCommentModel> comments) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
    ),
    isScrollControlled: true,
    builder: (context) {
      return SizedBox(
        height: 500,
        // <-- set your custom height here
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 30,
            bottom: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/icons/ic_like.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/icons/ic_comments.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/icons/ic_option.svg"),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IntrinsicWidth(
                    child: Container(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            child: profileImage(
                              "assets/images/user_image_1.png",
                              40.0,
                              40.0,
                              Colors.white,
                            ),
                          ),
                          Positioned(
                            left: 30,
                            child: profileImage(
                              "assets/images/user_image_2.png",
                              40,
                              40,
                              Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Liked by",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF484D54),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(
                              text: "Earl Garcia, Nancy Maio",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: ", and 20 others",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12),
              Divider(thickness: 1, color: Color(0x73C5C5C5)),
              SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF484D54),
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "Obsessed with my desk at work. All cleaned & organized after 5 years ",
                    ),
                    TextSpan(
                      text: "#workdesk #worklife #agency",
                      style: TextStyle(color: Color(0xFF2676E1)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                "22 hours ago",
                style: TextStyle(fontSize: 12, color: Color(0xFF484D54)),
              ),
              SizedBox(height: 12),
              Divider(thickness: 1, color: Color(0x73C5C5C5)),
              Expanded(
                child: ListView.builder(
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    final item = comments[index];
                    return commentItem(item);
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
