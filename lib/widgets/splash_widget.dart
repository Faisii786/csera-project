import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  SplashPage(
      {required this.imagePath,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(imagePath),
          width: double.infinity,
          height: 150,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 24.0, color: const Color.fromARGB(255, 221, 215, 215)),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.0, color: Color.fromARGB(255, 209, 206, 206)),
          ),
        ),
      ],
    );
  }
}
