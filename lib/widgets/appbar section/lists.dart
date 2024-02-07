import 'package:csera_app/Authentication/SignIn.dart';
import 'package:csera_app/screens/Splash%20Screen/wellcome_screen.dart';
import 'package:csera_app/screens/about%20section/whatisCsera.dart';
import 'package:csera_app/widgets/contact%20section/contact%20us.dart';
import 'package:csera_app/widgets/course%20section/courses_cards.dart';
import 'package:csera_app/widgets/course%20section/training_cards.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class lists extends StatelessWidget {
  final String title;
  final Icon? icon;
  final Color? color;
  final Icon? leading;
  final String? value;
  lists(this.title, this.icon, this.color, this.leading, this.value);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: color),
      ),
      trailing: icon,
      leading: leading,
      onTap: () {
        if (value == "1") {
          Get.back();
        } else if (value == "2") {
          Get.to(whatisCsera());
        } else if (value == "3") {
          Get.to(training_cards());
        } else if (value == "4") {
          Get.to(courses_cards());
        } else if (value == "5") {
          Get.to(ContactUs());
        } else if (value == "6") {
          Get.to(()=>SignIn());
        } else if (value == "7") {
          Get.defaultDialog(
            title: "Logout",
            middleText: "Are you sure you want to logout?",
            actions: [
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Cancel"),
              ),
              SizedBox(width: 40),
              TextButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Get.to(() =>WellcomeScreen());
                },
                child: Text("Logout"),
              ),
            ],
          );
        }
      },
    );
  }
}
