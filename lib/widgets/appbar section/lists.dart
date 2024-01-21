import 'package:csera_app/widgets/contact%20section/contact%20us.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class lists extends StatelessWidget {
   final String title;
   final Icon? icon;
   final Color? color;
   final Icon? leading;
   final String? value;
   lists(this.title,this.icon,this.color,this.leading,this.value);
  @override
  Widget build(BuildContext context) {
    return ListTile(
       title: Text(title,style: TextStyle(color: color),),
       trailing: icon,
      leading: leading,
      onTap:() {
        if(value=="1")
          {

          }
        else if(value=="2"){

        }
        else if(value=="3"){

        }
        else if(value=="4"){

        }
        else if(value=="5"){
          Get.to(contact_us());
        }
      },
    );
  }
}
