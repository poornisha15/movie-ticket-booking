import 'package:flutter/material.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 24,top: 8),
          child: Text("AngryBird",
          style: TextStyle(fontSize: 24),)
          ),
          Container(
            margin: EdgeInsets.only(top: 4, left: 24),
            child: Text("LA MARIS",
            style: TextStyle(fontSize: 18,color: Colors.white70),),
          ),
      ],
    );
  }
}