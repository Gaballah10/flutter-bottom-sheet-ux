import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ux_bottom_dialog/Presentation/screens/bloc/user_event.dart';
import 'package:ux_bottom_dialog/Presentation/screens/bloc/user_state.dart';

import '../../../core/models/user_comment_model.dart';
import '../../../di/injector.dart';
import '../../../domain/usecases/users_data_usecases.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UsersDataUsecases usersDataUsecases  = injector.get<UsersDataUsecases>();

  UserBloc() : super(UserInitial()) {
    on<LoadUserComments>((event, emit) {
      emit(UserLoading());
      try {
        final comments = usersDataUsecases.getUserList();
        emit(UserLoaded(comments));
        debugPrint("Data Loaded Success");
      } catch (e) {
        emit(UserError("Failed to load comments"));
      }
    });
  }
}
