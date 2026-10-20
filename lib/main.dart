import 'package:flutter/material.dart';
import 'package:flutter_pert1/providers/app_state_provider.dart';
import 'package:provider/provider.dart';
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
    return ChangeNotifierProvider(
      create: (_) => AppStateProvider(),
      child: MaterialApp.router( //tambahkan router untuk navigasi
        title: 'Anime Verse',
        theme: ThemeData(
          fontFamily: 'Urbanist',
        ),
        routerConfig: createRouter(), //gunakan createRouter untuk konfigurasi router
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}