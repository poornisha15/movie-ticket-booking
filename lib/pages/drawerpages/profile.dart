import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../onbording/components/Textwidget.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 244, 244),
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(225, 10, 30, 200),
        title: Text("Edit Profile",style: TextStyle(fontSize: 24),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CircleAvatar(
                      radius: 40,
                    backgroundImage: AssetImage("asset/circle avathar.png"),
                  ),
                  ),
                ),
                Text("Add Photo",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 3
                    )
                  )
                ),
                ),
                 SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mobile Number",
                      style: TextStyle(fontSize: 20,color: Colors.black),),
                      Text("Edit Number",
                      style: TextStyle(fontSize: 20,color: Colors.black),),
                      ],
                  ),),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
          decoration: BoxDecoration(color: Color.fromARGB(255, 231, 224, 224),
          borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "987654321",
              hintStyle: TextStyle(color: Colors.black,fontSize: 18),),
            keyboardType: TextInputType.phone,
          ),
        ),
        Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Email Address",
                      style: TextStyle(fontSize: 20,color: Colors.black),),
                      Text("Edit Email",
                      style: TextStyle(fontSize: 20,color: Colors.black),),
                      ],
                  ),),
        Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
          decoration: BoxDecoration(color: Color.fromARGB(255, 231, 224, 224),
          borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Pooja@gmail.com",
              hintStyle: TextStyle(color: Colors.black,fontSize: 18),),
            keyboardType: TextInputType.emailAddress,
          ),
        ), ]),
        SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  )
                ),
                ),
                 SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text("Personal Details (Optional)",
                  style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                 SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text("First name",
                        style: TextStyle(fontSize: 22,color: Colors.black),),
                ),
                       SizedBox(
                  height: 10,
                ),
                Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
          decoration: BoxDecoration(color: Color.fromARGB(255, 231, 224, 224),
          borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Enter first name here ",
              hintStyle: TextStyle(color: Colors.black,fontSize: 20),),
            keyboardType: TextInputType.name,
            style:TextStyle(color: Colors.black),
          ),
        ), 
         SizedBox(
                  height: 10,
                ),
                 SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text("Last name",
                        style: TextStyle(fontSize: 22,color: Colors.black),),
                ),
                       SizedBox(
                  height: 10,
                ),
                Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
          decoration: BoxDecoration(color: Color.fromARGB(255, 231, 224, 224),
          borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Enter last name here ",
              hintStyle: TextStyle(color: Colors.black,fontSize: 20),),
            keyboardType: TextInputType.name,
            style:TextStyle(color: Colors.black)
          ),
        ), 
         SizedBox(
                  height: 10,
                ),
          ],
            ),
          ],
        ),
      ),
    );
  }
}
