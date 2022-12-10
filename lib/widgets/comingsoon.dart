import 'package:flutter/material.dart';

import '../pages/detailscreen.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(),));
          },
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset("asset/sk1.jpg")),
          ),
          GestureDetector(
            onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(),));
          },
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset("asset/universal.jpg")),
          ),
          Container(
            width: 100,
            height: 100,
            child: Image.asset("asset/arunvijay.jpg")),
             GestureDetector(
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(),));
          },
               child: Container(
                         width: 100,
                         height: 100,
                         child: Image.asset("asset/trisha.jpg")),
             ),
             GestureDetector(
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(),));
          },
               child: Container(
                         width: 100,
                         height: 100,
                         child: Image.asset("asset/babu.jpg")),
             ),
        ],
      ),
    );
  }
}
