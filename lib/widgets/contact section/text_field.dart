import 'package:flutter/material.dart';

// ignore: must_be_immutable
class text_field extends StatelessWidget {
  TextInputType? type;
  Icon? icon;
  Icon? suffixicon;
  Text? text;

  text_field(this.type,this.icon,this.suffixicon,this.text);
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
            suffixIcon: suffixicon,
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
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton.icon(
          onPressed: (){},
          icon: Icon(Icons.contact_page_outlined),
          label: Text("CONTACT US"),
      ),
    );
  }
}
