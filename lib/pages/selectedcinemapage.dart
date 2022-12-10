import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_ticket_booking_app/pages/selectseat.dart';
import '../widgets/ChooseDate.dart';
import '../widgets/LaMaris.dart';
import '../widgets/Nextbutton.dart';
import '../widgets/customheader.dart';

class SelectedCinemaPage extends StatelessWidget {
   SelectedCinemaPage({Key? key}) : super(key: key);

List times = ["11:00AM", "02:30PM", "06:30PM", "10:00PM"];
  
  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //customheaderwidget
              Customheader(size: size, content: 'Ready To Book Your \n Tickets',),
             
              //locationbox
              Container(
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                height: size.height/14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(14),
                  border: Border.all(color: Colors.white)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: "Select Your Location",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.white38),
                            border: InputBorder.none ,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.location_on_outlined,
                              color: Colors.white,
                              size: 25,),
                            ),
                        ),
                      )),
                     Padding(
                       padding: const EdgeInsets.only(right: 8),
                       child: Icon(Icons.keyboard_arrow_down,
                       color: Colors.white,
                       size: 35,),
                     ),
                  ],
                ), 
              ),
              
              //BuildMethodForTitle
              BuildChoose("Choose Date"),

              //DateScreen
              ChooseDate(size: size),

              //BuildMethodForTitle
              BuildChoose("LA CINEMA MARIS"),

              //TheaterScreen
              LAMARIS(size: size, times: times),

              //BuildMethodForTitle
              BuildChoose("MEGASTAR CINEMAS"),

              //ShowTime
              Container(
              margin: EdgeInsets.only(top: 8, bottom: 15),
              height: size.height/15,
              child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: times.length,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(left: 24),
            width: size.width/4,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(214, 50, 38, 187),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(times[index],
            style: TextStyle(fontSize: 20),),
          ),),
            ),

            //BuildMethodForTitle
              BuildChoose("LA CINEMA SONA MINA"),

              //ShowTime
              Container(
              margin: EdgeInsets.only(top: 8, bottom: 15),
              height: size.height/15,
              child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: times.length,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(left: 24),
            width: size.width/4,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(214, 50, 38, 187),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(times[index],
            style: TextStyle(fontSize: 20),),
          ),),
            ),

            //SelectseatButton
            Nextbutton(onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => SelectSeat(),));
            },),
            ],
          ),
        )),
    );
  }
///buildchoosemethod
  Container BuildChoose(String content) {
    return Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Text(content,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white
            ),),
          );
  }
}






