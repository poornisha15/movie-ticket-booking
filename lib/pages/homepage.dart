import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_ticket_booking_app/pages/onbording/components/Textwidget.dart';
import 'package:movie_ticket_booking_app/pages/onbording/signin.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/buildTitleHome.dart';
import '../widgets/homeheader.dart';
import '../widgets/comingsoon.dart';
import '../widgets/offers.dart';
import '../widgets/searchbar.dart';
import '../widgets/slider.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);
  final movies = [];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawerwidget(),
      body: 
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(size: size),
            searchbar(size: size),
            buildTitleHome(Content: "Now Playing"),
            slider(),
            buildTitleHome(Content: "Coming Soon"),
            ComingSoon(),
            buildTitleHome(Content: "Offers"),
            offers(size: size,),
              ]),
            ),);
  }
}

