import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}
class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;
  final List<String> imageUrls = [
    'assets/images/FaisalSection/CourseCoverPics/cyber.jpg',
    'assets/images/FaisalSection/CourseCoverPics/game.png',
    'assets/images/FaisalSection/CourseCoverPics/amazon.png',
    'assets/images/FaisalSection/CourseCoverPics/ai.png',
  ];

  Widget buildImage(int index, double translation, double opacity) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      transform: Matrix4.translationValues(translation, 0.0, 0.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image(
          image: AssetImage(imageUrls[index]),
          fit: BoxFit.cover,
          height: 200.0, // Set the desired height
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      items: imageUrls.map((imageUrl) {
        int currentIndex = imageUrls.indexOf(imageUrl);
        int prevIndex = (currentIndex - 1 + imageUrls.length) % imageUrls.length;
        int nextIndex = (currentIndex + 2) % imageUrls.length;

        double translation = _currentIndex == currentIndex ? 0.0 : -20.0;
        double opacity = _currentIndex == currentIndex ? 1.0 : 0.5;

        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                // Handle your click event here
                print('Image at index $_currentIndex clicked!');
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    child: buildImage(prevIndex, translation, opacity),
                  ),
                  buildImage(currentIndex, translation, opacity),
                  Positioned(
                    right: 0,
                    child: buildImage(nextIndex, translation, opacity),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
