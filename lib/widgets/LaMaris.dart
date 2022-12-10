import 'package:flutter/material.dart';

class LAMARIS extends StatelessWidget {
  const LAMARIS({
    Key? key,
    required this.size,
    required this.times,
  }) : super(key: key);

  final Size size;
  final List times;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 15),
      height: size.height/15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: times.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(left: 24),
          width: size.width/4,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromARGB(214, 50, 38, 187),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Text(times[index],
          style: TextStyle(fontSize: 20),),
        ),),
    );
  }
}