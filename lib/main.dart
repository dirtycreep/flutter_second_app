import 'package:flutter/material.dart';
import 'package:flutter_second_app/presentation/router.dart';
import 'package:flutter_second_app/presentation/screens/todos_screen.dart';

void main() {
  runApp(MyApp(
      router: AppRouter(),
  ));

}

class MyApp extends StatelessWidget {

  final AppRouter router;

  const MyApp({Key key, this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      onGenerateRoute: router.generateRoute,
    );
  }
}

