import 'package:csera_app/Authentication/SignIn.dart';
import 'package:csera_app/screens/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Controllers/passwordController.dart';
import '../utility/colors.dart';
import 'AuthFunctions.dart';

class SignUpScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  PasswordController getxController = PasswordController();
  AuthService _auth = AuthService();

  SignUpScreen({super.key});

  //Firebase SignUp
  // Future<void> Signup() async {
  //   try {
  //     UserCredential userCredential = await auth.createUserWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );
  //     if (userCredential.user != null) {
  //       Get.off(UserDetails());
  //       Get.snackbar("success", "Account created Successfully",snackPosition: SnackPosition.TOP,duration: const Duration(seconds: 2),backgroundColor: Colors.green,colorText: Colors.white);
  //
  //     }
  //   } catch (excep) {
  //     Get.snackbar("error", "$excep",snackPosition: SnackPosition.TOP,duration: const Duration(seconds: 2),backgroundColor: Colors.red,colorText: Colors.white);
  //
  //   }
  // }


  //ValidatorFunctions
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  }
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().AppBarColor,
      appBar: AppBar(
        backgroundColor: AppColors().AppBarColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text('Sign Up',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: const Text(
                    "Let's Create Your Account", style: TextStyle(fontSize: 30,color: Colors.white),),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white), // Set label color to white
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white), // Set border color to white
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white), // Set enabled border color to white
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.greenAccent), // Set focused border color to white
                    ),
                  ),
                  style: TextStyle(color: Colors.white), // Set text color to white
                  validator: _validateEmail,
                ),

                const SizedBox(height: 12),
                Obx(() {
                  return TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    obscureText: getxController.obsecure.value,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white), // Set label color to white
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white), // Set border color to white
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white), // Set enabled border color to white
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.greenAccent), // Set focused border color to white
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          getxController.togglePasswordVisibility();
                        },
                        icon: Icon(
                          getxController.obsecure.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white, // Set icon color to white
                        ),
                      ),
                    ),
                    style: TextStyle(color: Colors.white), // Set text color to white
                    validator: _validatePassword,
                  );
                }),
                const SizedBox(height: 30),
                //elevated Button
                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      _auth.SignUp(emailController.text, passwordController.text);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                ),
                const SizedBox(height: 20),
                //text Button
                Row(
                  children: [
                    Text("Already have an account",style: TextStyle(color: Colors.white),),
                    TextButton(
                      onPressed: () {
                        Get.to(SignIn());
                      },
                      child: const Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}