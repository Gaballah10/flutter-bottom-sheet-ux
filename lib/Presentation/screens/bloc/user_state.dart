import '../../../core/models/user_comment_model.dart';

abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final List<UserCommentModel> comments;

  UserLoaded(this.comments);
}

class UserError extends UserState {
  final String message;

  UserError(this.message);
}
