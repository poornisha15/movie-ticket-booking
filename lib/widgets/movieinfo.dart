import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 8, bottom: 8),
            width: size.width,
            child: Text("Angry Bird",
            style: TextStyle(fontSize: 20),),
          ),
          Container(
            margin: EdgeInsets.only(left: 8, bottom: 8),
            child: Row(
              children: [
                RatingBarIndicator(
                  itemSize: 20,
                  itemCount: 5,
                  itemBuilder: (context, index)=> Icon(
                   Icons.star),
                   unratedColor: Colors.amberAccent[100],
            ),
            Text("(5.0)",style: TextStyle(fontSize: 20),)
            ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8, bottom: 8),
            width: size.width,
            child: Text("Action & Adventure, comedy",
            style: TextStyle(fontSize: 16),),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8,right: 85),
            child: Text("2h20min",
            style: TextStyle(fontSize: 16),),
          )
        ],
      )
                );
  }
}