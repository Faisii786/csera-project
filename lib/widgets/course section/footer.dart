import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: AppColors().AppBarColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/logo2.png",
              width: 80,
            ),
            Center(
              child: Text(
                "© 2024 All rights reseverd , CSERA",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
                Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
                Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
