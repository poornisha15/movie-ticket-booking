import 'package:flutter/material.dart';

class Trailer_Songs extends StatelessWidget {
  const Trailer_Songs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, bottom: 2),
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/Angry-BirdMovie-Poster-1.jpg")), 
              ),
              child: GestureDetector(
                onTap: () {
                },
                child: SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 70),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent
                  ),
                  child: ImageIcon(AssetImage("asset/play-button-circled.png"),
                  size: 12,
                  ),
                )
                ),
              )),),
            Padding(
            padding: EdgeInsets.only(left: 10, bottom: 4),
            child: Container(
               width: 160,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/Angry-Birds-Movie-Poster-2.jpg")), 
              ),
              child: GestureDetector(
                onTap: () {
                },
                child: SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 70),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent
                  ),
                  child: ImageIcon(AssetImage("asset/play-button-circled.png"),
                  size: 12,
                  ),
                )
                ),
              )),),Padding(
            padding: EdgeInsets.only(left: 10, bottom: 4),
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/Angry-Birds-Angry-Birds-Movie-Poster3.jpg")), 
              ),
               child: GestureDetector(
                onTap: () {
                  
                },
                 child: SizedBox(
                             width: 100,
                             height: 100,
                             child: Container(
                  margin: EdgeInsets.symmetric(vertical: 70),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent
                  ),
                  child: ImageIcon(AssetImage("asset/play-button-circled.png"),
                  size: 12,
                  ),
                             )
                             ),
               )),),
        ],
      ),
    );
  }
}