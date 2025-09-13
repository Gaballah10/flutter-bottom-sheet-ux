import 'package:get_it/get_it.dart';

import '../data/local/user_data_source.dart';
import '../data/local/user_data_source_impl.dart';
import '../data/repository/local_data_repository_impl.dart';
import '../domain/repository/user_repository.dart';
import '../domain/usecases/users_data_usecases.dart';

final injector = GetIt.instance;

void provideDataSources() async {

  injector.registerFactory<UserDataSource>(
        () => UserDataSourceImpl(),
  );

  injector.registerFactory<UserRepository>(
        () => LocalDataRepositoryImpl(
      userDataSource: injector.get<UserDataSource>(),
    ),
  );

}

void provideUseCases() {

  injector.registerFactory<UsersDataUsecases>(
        () => UsersDataUsecases(userRepository : injector.get<UserRepository>()),
  );

}