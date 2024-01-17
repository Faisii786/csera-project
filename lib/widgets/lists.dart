import 'package:flutter/material.dart';
import 'package:csera_app/utility/colors.dart';
class lists extends StatelessWidget {
   final String title;
   final Icon? icon;
   final Color? color;
   final Icon? leading;
   lists(this.title,this.icon,this.color,this.leading);
  @override
  Widget build(BuildContext context) {
    return Card(
      color:Color(0xff1e3d58),
       child: ListTile(
          title: Text(title,style: TextStyle(color: color),),
          trailing: icon,
         leading: leading,
       ),
    );
  }
}
