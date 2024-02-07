import 'package:csera_app/screens/bottomNavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactUs extends StatefulWidget {
  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  var useremail = FirebaseAuth.instance.currentUser?.email.toString();

  bool isChecked = false;
  bool isLoading = false;

  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required !";
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required!';
    }
    return null;
  }

  Future<void> sendEmail() async {
    setState(() {
      isLoading = true;
    });
    if(useremail==null){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please Signin First')));
      isLoading = false;
    }
    else{
      final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
      const serviceId = "service_hlvv6af";
      const templateId = "template_eoqoiyw";
      const userId = "9QQnAmBIdXBMxFUjm";

      var response = await http.post(
        url,
        headers: {
          'origin': 'http:localhost',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "service_id": serviceId,
          "template_id": templateId,
          "user_id": userId,
          "template_params": {
            "name": nameController.text,
            "phone": phoneController.text,
            "message": descriptionController.text,
            "user_email": useremail,
          }
        }),
      );
      setState(() {
        isLoading = false;
      });
      if (response.statusCode == 200) {
        Get.to(()=>MyBottomNavbar());
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Email Sent !'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Contact US",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                onTap: () {
                  setState(() {
                    _formKey.currentState?.validate();
                  });
                },
                validator: validate,
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                onTap: () {
                  setState(() {
                    _formKey.currentState?.validate();
                  });
                },
                validator: validatePhone,
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  hintText: 'Phone Number (e.g., 923001234567)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                onTap: () {
                  setState(() {
                    _formKey.currentState?.validate();
                  });
                },
                validator: validate,
                controller: descriptionController,
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                maxLength: 200,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                decoration: InputDecoration(
                  labelText: 'Message',
                  hintText: 'Your Message',
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'By selecting this checkbox, I affirm the accuracy of all provided information and acknowledge my agreement to the terms and conditions outlined.',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: isLoading
                    ? null
                    : () {
                  if (_formKey.currentState!.validate() && isChecked) {
                    sendEmail();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please Enter Required Fields'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: Container(
                  width: Get.width,
                  height: Get.height * 0.07,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      )
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: isLoading
                        ? CupertinoActivityIndicator(color: Colors.white)
                        : Text('Send Message',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
