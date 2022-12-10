import 'package:flutter/material.dart';

class ChooseDate extends StatelessWidget {
  const ChooseDate({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height/8,
              width: size.width/6,
              decoration: BoxDecoration(
                color: Color.fromARGB(214, 50, 38, 187),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SUN",
                  style: TextStyle(fontSize: 20),
                  ),
                  Text("20",
                  style: TextStyle(fontSize:20 ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height/8,
              width: size.width/6,
              decoration: BoxDecoration(
                color: Color.fromARGB(214, 50, 38, 187),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("MON",
                  style: TextStyle(fontSize: 20),
                  ),
                  Text("21",
                  style: TextStyle(fontSize:20 ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height/8,
              width: size.width/6,
              decoration: BoxDecoration(
                color: Color.fromARGB(214, 50, 38, 187),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("TUE",
                  style: TextStyle(fontSize: 20),
                  ),
                  Text("22",
                  style: TextStyle(fontSize:20 ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height/8,
              width: size.width/6,
              decoration: BoxDecoration(
                color: Color.fromARGB(214, 50, 38, 187),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("WED",
                  style: TextStyle(fontSize: 20),
                  ),
                  Text("23",
                  style: TextStyle(fontSize:20 ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height/8,
              width: size.width/6,
              decoration: BoxDecoration(
                color: Color.fromARGB(214, 50, 38, 187),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("THU",
                  style: TextStyle(fontSize: 20),
                  ),
                  Text("24",
                  style: TextStyle(fontSize:20 ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height/8,
              width: size.width/6,
              decoration: BoxDecoration(
                color: Color.fromARGB(214, 50, 38, 187),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FRI",
                  style: TextStyle(fontSize: 20),
                  ),
                  Text("25",
                  style: TextStyle(fontSize:20 ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height/8,
              width: size.width/6,
              decoration: BoxDecoration(
                color: Color.fromARGB(214, 50, 38, 187),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SAT",
                  style: TextStyle(fontSize: 20),
                  ),
                  Text("26",
                  style: TextStyle(fontSize:20 ),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}