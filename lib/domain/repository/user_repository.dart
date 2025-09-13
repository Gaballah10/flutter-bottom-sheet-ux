import '../../core/models/user_comment_model.dart';

abstract class UserRepository {
  List<UserCommentModel> getUserList();
}