import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class YourOrders extends StatefulWidget {
  const YourOrders({super.key});

  @override
  State<YourOrders> createState() => _YourOrdersState();
}

class _YourOrdersState extends State<YourOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 244, 244),
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(225, 10, 30, 200),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,size: 35,)),
        title: Text("Your Bookings",style: TextStyle(fontSize: 24),),
      ),
      body: Center(
        child: Text("You have no more bookings",
        style: TextStyle(fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black),),
      ),
    );
  }
}