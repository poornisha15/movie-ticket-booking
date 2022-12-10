import 'package:flutter/material.dart';

class arrowback extends StatelessWidget {
  const arrowback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 50),
    child: IconButton(
      onPressed: () {
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios),
      color: Colors.white,
      iconSize: 35,),);
  }
}