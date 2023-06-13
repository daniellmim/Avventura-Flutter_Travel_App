import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  final List<String> images = [
    'images/place1.jpg',
    'images/place2.jpg',
    'images/place3.jpg',
    'images/place4.jpg',

  ];

  final List<String> placeNames = [
    'Addis Ababa',
    'Simien Mountains',
    'Lalibela',
  ];

  final List<String> descriptions = [
    'Discover the vibrant capital city of Ethiopia, with its rich history and cultural heritage.',
    'Explore the stunning landscapes and wildlife of the Simien Mountains National Park.',
    'Visit the ancient rock-hewn churches and religious sites in Lalibela, a UNESCO World Heritage site.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
            // CarouselSlider.builder(
            //   itemCount: images.length,
            //   options: CarouselOptions(
            //     autoPlay: true,
            //     aspectRatio: 16 / 9,
            //     enlargeCenterPage: true,
            //   ),
            //   itemBuilder: (context, index, realIndex) {
            //     return Container(
            //       child: Image.asset(
            //         images[index],
            //         fit: BoxFit.cover,
            //       ),
            //     );
            //   },
            // ),

            Image.asset('lib/images/place3.jpg'),


            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(placeNames.length, (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        placeNames[index],
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        descriptions[index],
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 20.0),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}