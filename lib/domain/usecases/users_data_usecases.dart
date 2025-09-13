import '../../core/models/user_comment_model.dart';
import '../repository/user_repository.dart';

class UsersDataUsecases {
  final UserRepository userRepository;

  UsersDataUsecases({required this.userRepository});

  List<UserCommentModel> getUserList() {
    return userRepository.getUserList();
  }
}
