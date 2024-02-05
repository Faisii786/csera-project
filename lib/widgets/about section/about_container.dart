import 'package:csera_app/screens/about%20section/joinNow.dart';
import 'package:csera_app/screens/about%20section/whatisCsera.dart';
import 'package:flutter/material.dart';

import '../../screens/About section/whyCsera.dart';

class AnimatedContainers extends StatefulWidget {
  @override
  _AnimatedContainersState createState() => _AnimatedContainersState();
}

class _AnimatedContainersState extends State<AnimatedContainers>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller4;

  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;
  late Animation<Offset> _animation4;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controllers and animations
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
    _controller4.forward();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildAnimatedContainer(_animation1, "assets/images/ShayanSection/ContainerPics/what.png",
                  () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => whatisCsera()));
              }),
          buildAnimatedContainer(_animation2, "assets/images/ShayanSection/ContainerPics/why.png",
                  () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => whyCsera()));
              }),
          SizedBox(height: screenWidth * 0.04),
          buildAnimatedContainer(_animation4, "assets/images/ShayanSection/ContainerPics/join.png",
                  () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpForm()));
              }),
          SizedBox(height: screenWidth * 0.04),
        ],
      ),
    );
  }

  Widget buildAnimatedContainer(
      Animation<Offset> animation, String imagePath, VoidCallback onTap) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: SlideTransition(
        position: animation,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.02),
          child: Container(
            height: screenWidth * 0.3,
            width: screenWidth * 0.292,
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.00001,
              vertical: screenWidth * 0.005,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller4.dispose();
    super.dispose();
  }
}
