import 'package:flutter/material.dart';

class buildTitle extends StatelessWidget {
  const buildTitle({
    Key? key,
    required this.Content,
  }) : super(key: key);
  final Content;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.all(24),
    child: Text(Content,
    style: TextStyle(fontSize: 22),),);
  }
}
