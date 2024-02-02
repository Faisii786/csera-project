
import 'package:csera_app/Authentication/SignIn.dart';
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
    }
    catch(e){
      Get.snackbar("Error", "$e",snackPosition: SnackPosition.TOP,colorText: Colors.white,backgroundColor: Colors.red);

    }
  }
  //function to SignOut
  Future<void> SignOut()async{
    await auth.signOut();
    auth.currentUser!=null;
    //add Screen here
    //Get.offAll();
  }

}