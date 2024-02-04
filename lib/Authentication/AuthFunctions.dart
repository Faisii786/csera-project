import 'package:csera_app/screens/bottomNavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  //function to signUp
  Future<void> SignUp(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.snackbar("Success", "Account Created Succesfully",
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          backgroundColor: Colors.greenAccent);
      Get.offAll(() => MyBottomNavbar());
    } catch (e) {
      Get.snackbar("Error", "$e",
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          backgroundColor: Colors.red);
    }
  }

  //function to SignIn
  Future<void> SignIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.snackbar("Success", "Login Succesfull",
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          backgroundColor: Colors.greenAccent);
      Get.offAll(() => MyBottomNavbar());
    } catch (e) {
      Get.snackbar("Error", "$e",
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          backgroundColor: Colors.red);
    }
  }

  //function to SignOut
  Future<void> SignOut() async {
    Get.dialog(AlertDialog(
      title: const Text("Logout"),
      content: const Text('Are You Sure You want to logout'),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await auth.signOut();
                  auth.currentUser == null;
                  Get.offAll(MyBottomNavbar());
                },
                child: const Text('Logout')),
          ],
        )
      ],
    ));
  }

  void ForgetFunction(String email) {
    Future Reset_Password() async {
      try {
        if (FirebaseAuth.instance.currentUser!.email != null) {
          await FirebaseAuth.instance
              .sendPasswordResetEmail(email: email.toString())
              .then((value) {
            Get.snackbar(
                'Success', 'We have Send to email ! Please Check Your email');
          });
        } else {
          Get.snackbar('Error', 'No user Found');
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
          Get.snackbar(
              'Error', 'Invalid Credentials ! Please enter valid email');
        } else if (e.code == 'user-not-found') {
          Get.snackbar('Error', 'Email not found');
        }
      }
    }
  }
}
