import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyConstant APP',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Navigator(
        pages: const [
          MaterialPage(
              key: ValueKey('LoginPage'),
              child: Login(
                title: 'Login',
              ))
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}
