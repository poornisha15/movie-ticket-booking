import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
      child: SizedBox(
        height: size.height/10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Find Your Best\n Movie",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30)),
              CircleAvatar(
                radius: size.height/24,
                backgroundImage: AssetImage("asset/circle avathar.png"),
              )
          ],
        ),
      ),
    );
  }
}