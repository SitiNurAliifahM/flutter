import 'package:flutter/material.dart';
import 'package:projek/arsitektur_bangunan/bangunan_screen.dart';
import 'package:projek/arsitektur_bangunan/profile_screen.dart';
import 'package:projek/arsitektur_bangunan/about_acreen.dart';
import 'package:projek/arsitektur_bangunan/home_screen.dart';
import 'package:projek/arsitektur_bangunan/bangunan_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
        '/bangunan': (context) => BangunanScreen(),
        '/profile': (context) => Profile()
      },
      initialRoute: "home",
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
