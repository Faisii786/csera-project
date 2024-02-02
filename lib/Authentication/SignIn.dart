import 'package:csera_app/Authentication/AuthFunctions.dart';
import 'package:csera_app/Controllers/passwordController.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SignIn extends StatelessWidget {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors().AppBarColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          //image
          Container(
            width: Get.width,
            height: Get.height * 0.9,
            color: AppColors().AppBarColor,
          ),
          //content
          Container(
            child:  SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container1(),
                  ],
                ),
              ),
            ),
          ),
        ],
      )

    );
  }
}
class Container1 extends StatelessWidget {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  PasswordController getxController = PasswordController();
  //AuthService auth = AuthService();

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
    return Center(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/logo1.png"),
              child: AssetImage == null
                  ? Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              )
                  : null,
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Text('Welcome Back',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold,color: Colors.white)),
              ],
            ),
            const Row(
              children: [
                Text('Ready To Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                   //
                  },
                  child: const Text('Forget Password',style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {
                  try {
                    if (_formKey.currentState!.validate()) {
                      // auth.SignIn(emailController.text, passwordController.text);
                    }
                  } catch (a) {
                    print(a);
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white), // Set border color to white
                    ),
                  ),
                ),
                child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),

          ],
        ),
      ),
    );
  }

}
