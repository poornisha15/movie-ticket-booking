import 'package:flutter/material.dart';

class Customheader extends StatelessWidget {
  const Customheader({
    Key? key,
    required this.size,
    required this.content,

  }) : super(key: key);

  final Size size;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.height/10,
          child: Center(
            child: Text(content,
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 16, top: 4),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back),
            color: Colors.white,
            iconSize: 25,),
        )
      ],
    );
  }
}
