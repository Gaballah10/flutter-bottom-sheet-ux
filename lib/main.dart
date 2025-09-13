import 'package:flutter/material.dart';
import 'Presentation/screens/PostDetails.dart';
import 'di/injector.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  provideDataSources();
  provideUseCases();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Dialog',
      debugShowCheckedModeBanner: false,
      home: const PostDetails(),
    );
  }
}
