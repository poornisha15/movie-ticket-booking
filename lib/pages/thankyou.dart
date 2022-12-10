import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_ticket_booking_app/pages/homepage.dart';

class Thankyou extends StatefulWidget {
  const Thankyou({super.key});

  @override
  State<Thankyou> createState() => _ThankyouState();
}

class _ThankyouState extends State<Thankyou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 70),
          Container(
            height: 200,
            width: 200,
            child: Image.asset("asset/thankyou.jpg")),
          Center(child: Text("Thank You",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700
          ),)),
          Text("Successfully Booked Your Tickets",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400
          ),),
          SizedBox(
            height: 100,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => MyHomePage(),));
            },
             child: Text("Back To HomePage",
             style: TextStyle(
              fontSize: 20
             ),))
          ],
      ),
    );
    
  }
}