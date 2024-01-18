import 'package:csera_app/screens/about%20section/joinNow.dart';
import 'package:csera_app/screens/about%20section/whatisCsera.dart';
import 'package:csera_app/screens/about%20section/whyCsera.dart';
import 'package:flutter/material.dart';

import '../../screens/about section/whoCsera.dart';

class animatedContainers extends StatefulWidget {
  @override
  _animatedContainersState createState() => _animatedContainersState();
}

class _animatedContainersState extends State<animatedContainers>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;

  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;
  late Animation<Offset> _animation3;
  late Animation<Offset> _animation4;

  @override
  void initState() {
    super.initState();

    // Animation Controller and Animation for the first container
    _controller1 = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation1 = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        curve: Curves.easeInOut,
        parent: _controller1,
      ),
    );

    // Animation Controller and Animation for the second container
    _controller2 = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation2 = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        curve: Curves.easeInOut,
        parent: _controller2,
      ),
    );

    // Animation Controller and Animation for the third container
    _controller3 = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation3 = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        curve: Curves.easeInOut,
        parent: _controller3,
      ),
    );

    // Animation Controller and Animation for the fourth container
    _controller4 = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation4 = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        curve: Curves.easeInOut,
        parent: _controller4,
      ),
    );

    // Start the animations
    _controller1.forward();
    _controller2.forward();
    _controller3.forward();
    _controller4.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Row 1
          buildAnimatedContainer(_animation1, "assets/images/what.png",
              () {
            // Add your navigation logic here
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => whatisCsera()));
          }),
          buildAnimatedContainer(_animation2, "assets/images/why.png",
              () {
            // Add your navigation logic here
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => whyCsera()));
          }),
          SizedBox(height: 16),
          // Row 2
          buildAnimatedContainer(_animation3, "assets/images/who.png",
              () {
            // Add your navigation logic here
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => whoCsera()));
          }),
          buildAnimatedContainer(_animation4, "assets/images/join.png",
              () {
            // Add your navigation logic here
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => joinNow()));
          }),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  // Widget for building Animated Container with Image and Navigation
  Widget buildAnimatedContainer(
      Animation<Offset> animation, String imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SlideTransition(
        position: animation,
        child: Container(
          height: 160.0, // Adjusted container height
          width: 160.0,
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          // Image widget added here
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose animation controllers to prevent memory leaks
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }
}