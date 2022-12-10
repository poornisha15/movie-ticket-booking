import 'package:flutter/material.dart';

class buildTitleHome extends StatelessWidget {
  const buildTitleHome({
    Key? key,
    required this.Content
  }) : super(key: key);
final Content;
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
    child: Text(Content,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold
    ),));
  }
}