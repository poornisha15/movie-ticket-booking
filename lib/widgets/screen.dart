import 'package:flutter/material.dart';

class screen extends StatelessWidget {
  const screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Container(
          height: 30,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
            border: Border.all(color: Colors.red)
          ),
          child: Text("Screen",textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24, 
          ),),
        ),
      ),
    );
  }
}