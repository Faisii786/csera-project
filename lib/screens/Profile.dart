import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:csera_app/screens/About%20section/whatisCsera.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utility/colors.dart';
import 'Splash Screen/wellcome_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  var userId = FirebaseAuth.instance.currentUser!.uid;
  var useremail = FirebaseAuth.instance.currentUser!.email;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors().AppBarColor,
                    radius: 70,
                    child: Icon(Icons.person,size: 70,color: Colors.white,),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.grey),
              _buildSection(
                title: "Profile Information",
                children: [
                  _buildRow(label: "User-id", value: userId),
                  _buildRow(label: "User-email", value: useremail!),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.grey),
              const SizedBox(height: 20),
              Text("Help and Support",style: const TextStyle(color: Colors.grey, fontSize: 15),),
              Column(
                children: [
                  GestureDetector(
                      onTap: (){ Get.to(()=>whatisCsera());},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("About Csera",style: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                          Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.grey,))),
                        ],
                      )),
                  GestureDetector(
                      onTap: (){ Get.to(()=>whatisCsera());},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Share the Csera App",style: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                          Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.grey,))),
                        ],
                      )),
                  GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Frequently asked questions",style: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
                          Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.grey,))),
                        ],
                      )),
                ],
              ),
            
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
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
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors().AppBarColor,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: loading
                    ? CupertinoActivityIndicator()
                    : Text(
                  "SignOut",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 20,),
              Center(child: Text("Csera v8.21.0",style: TextStyle(color: Colors.grey),)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required List<Widget> children}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...children,
      ],
    );
  }

  Widget _buildRow({required String label, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
        Text(value),
      ],
    );
  }
}
