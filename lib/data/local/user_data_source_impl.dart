import 'package:ux_bottom_dialog/data/local/user_data_source.dart';

import '../../core/models/user_comment_model.dart';

class UserDataSourceImpl implements UserDataSource {
  @override
  List<UserCommentModel> getUserList() {
    return [
      UserCommentModel(
        userName: "Ronald Shores",
        comment: "Impressive set up 🔥",
        time: "14m ago",
        isLike: true,
        imagePath: "assets/images/user_image_3.png",
      ),
      UserCommentModel(
        userName: "Jimmy Love",
        comment: "Where’s your office? 📍",
        time: "30m ago",
        isLike: false,
        imagePath: "assets/images/user_image_4.png",
      ),
      UserCommentModel(
        userName: "Sha Gaines",
        comment: "I remember being away that day",
        time: "31m ago",
        isLike: true,
        imagePath: "assets/images/user_image_5.png",
      ),
      UserCommentModel(
        userName: "Ivey Wilson",
        comment: "Hahaha you made me clean your...",
        time: "35m ago",
        isLike: true,
        imagePath: "assets/images/user_image_6.png",
      ),
      UserCommentModel(
        userName: "Bradley Dame",
        comment: "That was the day we got nothing...",
        time: "1h ago",
        isLike: true,
        imagePath: "assets/images/user_image_7.png",
      ),
    ];
  }
}