
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'PostDetailsPage.dart';
import 'bloc/user_bloc.dart';

class PostDetails extends StatelessWidget {
  const PostDetails ({super.key});

 /* @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }*/

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserBloc())
      ],
      child: const PostDetailsPage(),
    );
  }
}
