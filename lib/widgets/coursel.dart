import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarousel extends StatelessWidget {

  final List<String> imageUrls = [
    'assets/images/amazon.png',
    'assets/images/cloud.jpg',
    'assets/images/cyber.jpg',
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
