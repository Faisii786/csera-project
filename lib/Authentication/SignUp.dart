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

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void ValidateFunction() {
    if (_formKey.currentState?.validate() ?? false) {
      Register();
    }
  }

  Future<void> sendEmailVerification(User user) async {
    if (!user.emailVerified) {
      await user.sendEmailVerification();
      print('Verification email sent to ${user.email}');
    } else {
      print('User is already verified.');
    }
  }

  Future<void> Register() async {
    try {
      setState(() {
        loading = true;
      });

      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      await sendEmailVerification(userCredential.user!);
      SnakBarKey.currentState?.showSnackBar(
          SnackBar(content: Text("Please verify your email to continue")));

      // Wait for email verification
      User? user = await auth.currentUser;
      await user?.reload();

      if (user?.emailVerified == true) {
        Get.offAll(() => MyBottomNavbar());
      } else {
        SnakBarKey.currentState?.showSnackBar(
            SnackBar(content: Text("Verification unsuccessful")));
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage = "An error occurred. Please try again later.";
      if (e.code == "email-already-in-use") {
        errorMessage = "Email is already taken.";
      } else if (e.code == "invalid-email") {
        errorMessage = "Email is not valid.";
      } else if (e.code == "weak-password") {
        errorMessage = "Password is weak.";
      }
      SnakBarKey.currentState
          ?.showSnackBar(SnackBar(content: Text(errorMessage)));
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  // Function to validate email using a regular expression
  bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegExp.hasMatch(email);
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
            autovalidateMode: AutovalidateMode.always,
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
                      labelText: 'First name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter first-name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: lastNameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Last name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter last-name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter email";
                      } else if (!isValidEmail(emailController.text)) {
                        return "please enter valid email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  Obx(() {
                    return TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
                      obscureText: getxController.obsecure.value,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            getxController.togglePasswordVisibility();
                          },
                          icon: Icon(
                            getxController.obsecure.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter password";
                        }
                        return null;
                      },
                    );
                  }),
                  const SizedBox(height: 30),
                  // Elevated Button
                  ElevatedButton(
                    onPressed: loading ? null : ValidateFunction,
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
                  // Text Button
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
