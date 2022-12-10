import 'package:flutter/material.dart';

class Nextbutton extends StatelessWidget {
  VoidCallback onTap;
   Nextbutton({
    Key? key,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 13,left: 100,right: 100,),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 13, 48, 224))
          ),
          onPressed: onTap, 
          child: Text("Select Seat",
          style: TextStyle(fontSize: 20),),
    ),);
  }
}