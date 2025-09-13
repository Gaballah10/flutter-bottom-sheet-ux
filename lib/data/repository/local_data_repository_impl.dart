import 'package:ux_bottom_dialog/core/models/user_comment_model.dart';

import '../../domain/repository/user_repository.dart';
import '../local/user_data_source.dart';

class LocalDataRepositoryImpl extends  UserRepository {

  final UserDataSource userDataSource;

  LocalDataRepositoryImpl({required this.userDataSource});

  @override
  List<UserCommentModel> getUserList() {
     return userDataSource.getUserList();
  }
}