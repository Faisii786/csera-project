import 'package:csera_app/screens/course_details/cyber_security.dart';
import 'package:flutter/material.dart';
import 'CseraAboutSectionComplete/AnimatedContainers/AboutContainer.dart';
import 'package:csera_app/screens/Dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CSERA App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DashboardScreen(),

    );
  }
}
