import 'package:csera_app/screens/Dashboard.dart';
<<<<<<< HEAD
import 'package:csera_app/screens/splash%20screen/first_splash.dart';
=======
import 'package:csera_app/screens/MainScreen.dart';
>>>>>>> 4fa559535a70ac604e5066f960db7d7ef5adce02
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CSERA App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
<<<<<<< HEAD
      home: FirstSplashScreen(),
=======
      home: Main_screen(),
>>>>>>> 4fa559535a70ac604e5066f960db7d7ef5adce02
    );
  }
}
