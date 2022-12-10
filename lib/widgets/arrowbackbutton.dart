import 'package:flutter/material.dart';

class arrowbackbutton extends StatelessWidget {
  const arrowbackbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 4),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.arrow_back_outlined,
        color: Colors.white,)),
    );
  }
}