import 'package:csera_app/utility/text_data.dart';
import 'package:flutter/material.dart';

import '../../utility/colors.dart';

class ClickMoreSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity, // Set width to infinity
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors().AppBarColor,
          boxShadow: [
            BoxShadow(
              color: Colors.white24.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Csera",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors().textColor,
                ),
              ),
              Text(
                Descriptions().aboutText,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              // Additional content can be added here
            ],
          ),
        ),
      ),
    );
  }
}
