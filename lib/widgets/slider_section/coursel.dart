import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {

  final List<String> imageUrls = [
    'assets/images/FaisalSection/CourseCoverPics/cyber.jpg',
    'assets/images/FaisalSection/CourseCoverPics/game.png',
    'assets/images/FaisalSection/CourseCoverPics/amazon.png',
    'assets/images/FaisalSection/CourseCoverPics/ai.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0, // Adjust the height as needed
        aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
        viewportFraction: 1.7,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
      ),
      items: imageUrls.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
