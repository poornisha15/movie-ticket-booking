import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_ticket_booking_app/widgets/buildTitleHome.dart';
import 'package:movie_ticket_booking_app/pages/selectedcinemapage.dart';
import 'package:movie_ticket_booking_app/widgets/arrowbackbutton.dart';
import '../widgets/arrowback.dart';
import '../widgets/buildTitle.dart';
import '../widgets/Cast_Crew.dart';
import '../widgets/Trailer_Songs.dart';
import '../widgets/backgroundwidget.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> with SingleTickerProviderStateMixin {
  
  late TabController _tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
 
 final movies = [];
  
  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [

            //topimagewidget
            backgroundwidget(size: size),

            //gradient
            Container(
            height: size.height/3.5,
           decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.black87,Colors.black12
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  ),
            ),
            //arrowbackwidget
            arrowback(),

            //moviedetails
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.only(left: 24,top: size.height/3.5),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width/2,
                      child: Image.asset("asset/angrybird.jpg",
                      fit: BoxFit.cover),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 8, bottom: 8),
                            width: size.width,
                            child: Text("Angry Bird",
                            style: TextStyle(fontSize: 20),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, bottom: 8),
                            child: Row(
                              children: [
                                RatingBarIndicator(
                                  itemSize: 20,
                                  itemCount: 5,
                                  itemBuilder: (context, index)=> Icon(
                                   Icons.star),
                                   unratedColor: Colors.amberAccent[100],
                            ),
                            Text("(5.0)",style: TextStyle(fontSize: 20),)
                            ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8, bottom: 8),
                            width: size.width,
                            child: Text("Action & Adventure, comedy",
                            style: TextStyle(fontSize: 16),),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 8,right: 85),
                            child: Text("2h20min",
                            style: TextStyle(fontSize: 16),),
                          )
                        ],
                      )
                ),],
                ),
                ),
                SizedBox(
                  height: size.height - 120,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        alignment: Alignment.center,
                        width: size.width,
                        child: TabBar(
                          tabs: [
                            Tab(text: 'About Movie'),
                            Tab(text: 'Review')
                          ],
                          controller: _tabController,
                          indicatorColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: TextStyle(fontSize: 22),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [

                                //buildtitlewidget
                                buildTitle(Content: "Synopsis"),

                                Padding(
                                  padding: EdgeInsets.only(left: 24),
                                  child: Text("In this clever animated comedy, meet Red, Chuck and Bomb, a team of unlikely heroes, and finally learn why the birds are so angry!",
                                  style: TextStyle(fontSize: 18))),
                                  
                                  //buildtitlewidget
                                buildTitle(Content: "Cast & Crew"),

                                //cast & crew widget
                                Cast_Crew(size: size),

                                //buildtitlewidget
                                buildTitle(Content: "Trailer & Songs"),
                                
                                //Trailer & Song widget
                                Trailer_Songs(),

                                //BookTicketsButton
                                Container(
                                  margin: EdgeInsets.only(left: 100,right: 100),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 13, 48, 224))
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, 
                                      MaterialPageRoute(
                                        builder: (context) => SelectedCinemaPage(),));
                                    }, child: Text("Book Tickets",
                                    style: TextStyle(fontSize: 20,
                                    ),
                                    ) ),
                                )
                          ]),

                          //review tab
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.only(top: 50),
                              child: Text("This film tells the story of an outcast bird in the bird community, because of his anger problems and because of his thick eyebrows. He saves the day when he recognises that pig visitors may have sinister intentions then they declare.\n it is a funny film with lots of laughs. I find the urination scene a bit tasteless and far too lengthy, but each to their taste. The ending is quite touching. I enjoyed watching it overall.",
                              style: TextStyle(fontSize: 20),),
                            )
                          ],))
                    ],
                  ),
                )
                ],
              ),
          ])));
            
        
  }

}








