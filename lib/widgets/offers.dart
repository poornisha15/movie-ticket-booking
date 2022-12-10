import 'package:flutter/material.dart';

class offers extends StatelessWidget {
  const offers({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 24, right: 24,bottom: 12),
    child: Container(
      height: size.height/8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(colors:[Color.fromARGB(255, 6, 59, 152),Color.fromARGB(255, 12, 62, 147)])
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Students Holiday",
                  style: TextStyle(fontSize: 20),),
                  Text("Only For Bulk Booking",
                  style: TextStyle(fontSize: 20),)
                ],
              ),)),
              Expanded(
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '50% OFF',
                          style: TextStyle(
                            fontSize: 22)
                        )
                      ]
                      )
                    )),
                )])
      ));
  }
}