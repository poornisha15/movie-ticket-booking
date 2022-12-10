import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 246, 244, 244),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(225, 10, 30, 200),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,size: 35,)),
        title: Text("Rewards",style: TextStyle(fontSize: 24),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Container(
              height: 400,
              width: 300,
              child: Image.asset("asset/gift.jpeg"),
            ),
          ),
          Text("No rewards yet",
          style: TextStyle(fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.bold),),
          Text("Book a ticket to get rewarded",
          style: TextStyle(fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}