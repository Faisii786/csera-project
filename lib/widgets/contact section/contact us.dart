import 'package:csera_app/utility/colors.dart';
import 'package:csera_app/widgets/contact%20section/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class contact_us extends StatefulWidget {
  const contact_us({super.key});

  @override
  State<contact_us> createState() => _contact_usState();
}

class _contact_usState extends State<contact_us> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        color: AppColors().AppBarColor,
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Contact Us",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w600),),
                    text_field(
                        TextInputType.text,
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),

                        Text(
                          "Name",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                    text_field(
                        TextInputType.emailAddress,
                        Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                    text_field(
                        TextInputType.number,
                        Icon(
                          Icons.transgender,
                          color: Colors.white,
                        ),

                        Text(
                          "Gender",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                    text_field(
                        TextInputType.number,
                        Icon(
                          Icons.numbers_rounded,
                          color: Colors.white,
                        ),

                        Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                    text_field(
                        TextInputType.streetAddress,
                        Icon(
                          Icons.drive_file_rename_outline,
                          color: Colors.white,
                        ),

                        Text(
                          "Address",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                    text_field(
                        TextInputType.text,
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                        ),
                        Text(
                          "Discription",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                    button_field(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
