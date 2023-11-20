import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

// 라우트 router
// home, profile, login, create user

// 로딩화면 만들기

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
