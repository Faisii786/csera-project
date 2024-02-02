import 'package:csera_app/Authentication/SignIn.dart';
import 'package:csera_app/screens/MainScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthService{
  FirebaseAuth auth = FirebaseAuth.instance;

  //function to signUp
  Future<void> SignUp(String email, String password)async{
    try{
      await auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      Get.snackbar("Success", "Account Created Succesfully",snackPosition: SnackPosition.TOP,colorText: Colors.white,backgroundColor: Colors.greenAccent);
      Get.offAll(()=>Main_screen());
    }
    catch(e){
      Get.snackbar("Error", "$e",snackPosition: SnackPosition.TOP,colorText: Colors.white,backgroundColor: Colors.red);
    }
  }
  //function to SignIn
  Future<void> SignIn(String email, String password)async{
    try{
      await auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      Get.snackbar("Success", "Login Succesfull",snackPosition: SnackPosition.TOP,colorText: Colors.white,backgroundColor: Colors.greenAccent);
      Get.offAll(()=>Main_screen());
    }
    catch(e){
      Get.snackbar("Error", "$e",snackPosition: SnackPosition.TOP,colorText: Colors.white,backgroundColor: Colors.red);

    }
  }
  //function to SignOut
  Future<void> SignOut()async {
    Get.dialog(
        AlertDialog(
          title: const Text("Logout"),
          content: const Text('Are You Sure You want to logout'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){
                  Get.back();
                }, child: const Text("Cancel",style: TextStyle(color: Colors.black),),
                ),
                ElevatedButton(onPressed: () async {
                  await auth.signOut();
                  auth.currentUser == null;
                  Get.offAll(Main_screen());
                }, child: const Text('Logout')),
              ],
            )
          ],
        )
    );
  }

}