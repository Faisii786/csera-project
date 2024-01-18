import 'package:flutter/material.dart';


class logo_container extends StatefulWidget {
  const logo_container({super.key});

  @override
  State<logo_container> createState() => _logo_containerState();
}

class _logo_containerState extends State<logo_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: 300,
      decoration: BoxDecoration(
       // color: Colors.blueGrey,
      ),
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage('assets/images/logo.png',),
                width: 160,
                height: 150,
              ),
              Image(
                image: AssetImage('assets/images/logo1.png',),
                width: 160,
                height: 150,
              ),
            ],
          ),
          Image(
            image: AssetImage('assets/images/appbar_logo.jpg',),
            width: 200,
            height: 130,
          ),
        ],
      ),
    );
  }
}