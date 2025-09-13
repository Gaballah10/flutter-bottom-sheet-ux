import '../../core/models/user_comment_model.dart';

abstract class UserDataSource {
  List<UserCommentModel> getUserList();
}