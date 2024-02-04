// ignore_for_file: must_be_immutable

import 'package:csera_app/Authentication/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/passwordController.dart';
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
  //       Get.snackbar("success", "Account created Successfully",snackPosition: SnackPosition.TOP,duration: const Duration(seconds: 2),backgroundColor: Colors.green,colorText: Colors.black);
  //
  //     }
  //   } catch (excep) {
  //     Get.snackbar("error", "$excep",snackPosition: SnackPosition.TOP,duration: const Duration(seconds: 2),backgroundColor: Colors.red,colorText: Colors.black);
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Sign up',
          style: TextStyle(color: Colors.black),
        ),
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
                    "Let's Create Your Account",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color: Colors.black), // Set label color to white
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.black), // Set border color to white
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Set enabled border color to white
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors
                              .black), // Set focused border color to white
                    ),
                  ),
                  style:
                      TextStyle(color: Colors.black), // Set text color to white
                  validator: _validateEmail,
                ),

                const SizedBox(height: 12),
                Obx(() {
                  return TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    obscureText: getxController.obsecure.value,
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: Colors.black), // Set label color to white
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black), // Set border color to white
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors
                                .black), // Set enabled border color to white
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors
                                .black), // Set focused border color to white
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          getxController.togglePasswordVisibility();
                        },
                        icon: Icon(
                          getxController.obsecure.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black, // Set icon color to white
                        ),
                      ),
                    ),
                    style: TextStyle(
                        color: Colors.black), // Set text color to white
                    validator: _validatePassword,
                  );
                }),
                const SizedBox(height: 30),
                //elevated Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _auth.SignUp(
                          emailController.text, passwordController.text);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(height: 20),
                //text Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ! ",
                      style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignIn());
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.roboto(
                            color: const Color.fromARGB(255, 61, 31, 114),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
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
