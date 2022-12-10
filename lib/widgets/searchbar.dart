import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  const searchbar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SizedBox(
        height: size.height/15,
        child: Row(
          children: [
            Expanded(child: Container(
              height: size.height/15,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 6, 10, 133),
                borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 24,right: 12),
                  child: Icon(Icons.search,color: Colors.white,size: 30),
                  ),
                  Expanded(child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Movie',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22),
                  border: InputBorder.none
              ),
            )
        )
                ],
              ),
            )),  
            ],
        ),
      ),
    );
  }
}