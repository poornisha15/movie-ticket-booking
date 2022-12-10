import 'package:flutter/material.dart';

class backgroundwidget extends StatelessWidget {
  const backgroundwidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height/3.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("asset/trailer.jpg")),
              gradient: LinearGradient(colors: [
                Colors.black26,Colors.black54
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)
          ),
        ),
      ],
    );
  }
}