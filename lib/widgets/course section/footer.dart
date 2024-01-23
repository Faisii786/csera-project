import 'package:flutter/material.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:auto_size_text/auto_size_text.dart'; // If you choose to use auto_size_text

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: AppColors().AppBarColor,
      width: double.infinity,
      height: 60,
      // decoration: BoxDecoration(
      //     color: AppColors().AppBarColor,
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Make the image size responsive
            Image.asset(
              "assets/images/logo2.png",
              width: screenWidth * 0.2, // 20% of screen width
            ),
            // Use AutoSizeText for responsive text
            Expanded(
              child: AutoSizeText(
                "© 2024 All rights reseverd , CSERA",
                style: TextStyle(color: Colors.white),
                maxLines: 1,
              ),
            ),
            // Responsive Icons
            Row(
              children: [
                Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: screenWidth * 0.05, // 5% of screen width
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.fax_outlined,
                  color: Colors.white,
                  size: screenWidth * 0.05,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.safety_check,
                  color: Colors.white,
                  size: screenWidth * 0.05,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
