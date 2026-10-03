import 'package:flutter/material.dart';
import 'config/routes.dart';
import 'screens/signin_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/favorite_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AnimeVerse',
      theme: ThemeData(
        fontFamily: 'Urbanist',
      ),
      routerConfig: createRouter(),
      debugShowCheckedModeBanner: false,
    );
  }
}