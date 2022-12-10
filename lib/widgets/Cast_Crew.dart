import 'package:flutter/material.dart';

class Cast_Crew extends StatelessWidget {
  const Cast_Crew({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, bottom: 4),
            child: Container(
              width: size.width/4.5,
              height: size.width/4.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/jason.jpg")), 
              ),
            ),
            ),
            Padding(
            padding: EdgeInsets.only(left: 10, bottom: 4),
            child: Container(
              width: size.width/4.5,
              height: size.width/4.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/josh gad.jpg")), 
              ),
            ),
            ),Padding(
            padding: EdgeInsets.only(left: 10, bottom: 4),
            child: Container(
              width: size.width/4.5,
              height: size.width/4.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/rachel bloom.jpg")), 
              ),
            ),
            ),Padding(
            padding: EdgeInsets.only(left: 10, bottom: 4),
            child: Container(
              width: size.width/4.5,
              height: size.width/4.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/bill hader.jpg")), 
              ),
            ),
            ),
        ],
      ),
    );
  }
}