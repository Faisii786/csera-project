// ignore_for_file: must_be_immutable

import 'package:csera_app/Authentication/SignIn.dart';
import 'package:csera_app/screens/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/passwordController.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  PasswordController getxController = PasswordController();

  bool loading = false;

  void ValidateFunction() {
    if (firstNameController.text.isEmpty) {
      showSnakBar("First name is empty");
    } else if (lastNameController.text.isEmpty) {
      showSnakBar("Last name is empty");
    } else if (emailController.text.isEmpty) {
      showSnakBar("Email is Empty");
      return;
    } else if (!isValidEmail(emailController.text)) {
      showSnakBar("Please Enter a valid email");
    } else if (passwordController.text.isEmpty) {
      showSnakBar("Password is Empty");
      return;
    } else if (passwordController.text.length < 8) {
      showSnakBar("Password must at least 8");
      return;
    } else {
      Register();
    }
  }

  Future Register() async {
    try {
      setState(() {
        loading = true;
      });
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      showSnakBar("Account Created Successfully");
      Get.to(() => MyBottomNavbar());
      emailController.clear();
      passwordController.clear();
      setState(() {
        loading = false;
      });
    } catch (e) {
      print("Error creating account: $e");
      showSnakBar("Failed to create account: $e");
      print('$e');
    }
  }

  // Function to validate email using a regular expression
  bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegExp.hasMatch(email);
  }

  // snackbar function
  void showSnakBar(String message) {
    final snakbar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 4),
    );
    SnakBarKey.currentState?.showSnackBar(snakbar);
  }

  final SnakBarKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: SnakBarKey,
      child: Scaffold(
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
                    controller: firstNameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      labelText: 'First name',
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
                    style: TextStyle(
                        color: Colors.black), // Set text color to white
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: lastNameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      labelText: 'Last name',
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
                    style: TextStyle(
                        color: Colors.black), // Set text color to white
                  ),
                  const SizedBox(height: 12),
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
                    style: TextStyle(
                        color: Colors.black), // Set text color to white
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
                    );
                  }),
                  const SizedBox(height: 30),
                  //elevated Button
                  ElevatedButton(
                    onPressed: () {
                      ValidateFunction();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: loading
                        ? CupertinoActivityIndicator(
                            color: Colors.white,
                          )
                        : Text(
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
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontSize: 16),
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
      ),
    );
  }
}
