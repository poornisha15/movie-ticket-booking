import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 244, 244),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(225, 10, 30, 200),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,size: 35,)),
        title: Text("Settings",style: TextStyle(fontSize: 24),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 800,
            color: Color.fromARGB(255, 229, 223, 223),
              child: Text("Account Security",
           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 800,
            color: Color.fromARGB(255, 229, 223, 223),
              child: Text("Clear cache data",
           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 800,
            color: Color.fromARGB(255, 229, 223, 223),
              child: Text("Check app update",
           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 800,
            color: Color.fromARGB(255, 229, 223, 223),
              child: Text("About Us",
           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
        ],
      ),
    );
  }
}