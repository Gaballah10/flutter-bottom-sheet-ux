class UserCommentModel {
  final String userName;
  final String comment;
  final String time;
  final bool isLike;
  final String imagePath;

  UserCommentModel({
    required this.userName,
    required this.comment,
    required this.time,
    required this.isLike,
    required this.imagePath,
  });
}
