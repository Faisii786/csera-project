import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class text_field extends StatelessWidget {
  TextInputType? type;
  Icon? icon;
  Text? text;

  text_field(this.type,this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Container(
        child: TextFormField(
          keyboardType: type,
          decoration: InputDecoration(
            label: text,
            prefixIcon: icon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
          )
        ),
      ),
    );
  }
}
class button_field extends StatelessWidget {
  const button_field({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        width: Get.width,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue.shade600,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text("Contact Us",style: TextStyle(fontSize: 20,letterSpacing: 7,color: Colors.white),),),
      ),
    );
  }
}
