import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/pages/detailscreen.dart';
import 'package:movie_ticket_booking_app/pages/selectedcinemapage.dart';

import '../pages/onbording/components/detailscreen1.dart';

class slider extends StatelessWidget {
  const slider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(),));
          },
          child: Container(
            padding: EdgeInsets.only(left: 10, bottom: 24),
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                image: AssetImage('asset/angrybird.jpg'),
                fit: BoxFit.cover)
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(),));
          },
          child: Container(
            padding: EdgeInsets.only(left: 10, bottom: 24),
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                image: AssetImage('asset/cartoon.jpg'),
                fit: BoxFit.cover)
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(),));
          },
          child: Container(
            padding: EdgeInsets.only(left: 10, bottom: 24),
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                image: AssetImage("asset/superman.jpg"),
                fit: BoxFit.cover)
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(),));
          },
          child: Container(
            padding: EdgeInsets.only(left: 10, bottom: 24),
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                image: AssetImage('asset/toodle.jpg'),
                fit: BoxFit.cover)
            ),
          ),
        ),
      ], 
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
      ));
  }
}