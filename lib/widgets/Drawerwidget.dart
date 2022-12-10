import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/pages/drawerpages/profile.dart';
import 'package:movie_ticket_booking_app/pages/drawerpages/rewards.dart';
import 'package:movie_ticket_booking_app/pages/drawerpages/settings.dart';
import 'package:movie_ticket_booking_app/pages/drawerpages/yourorders.dart';
import 'package:movie_ticket_booking_app/pages/onbording/signin.dart';

import '../pages/onbording/components/Textwidget.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        backgroundColor: Color.fromARGB(225, 3, 22, 167),
        child: SafeArea(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                
                decoration: BoxDecoration(
                  color:  Color.fromARGB(225, 10, 30, 200),
                    borderRadius: BorderRadius.circular(25)
                  ),
                accountName: Text("poornisha",style: BodyText,), 
                accountEmail: Text("pooja@gmail.com",style: BodyText,
                ),
               currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset("asset/Poornisha.jpg"),
               ),
               ),
               SizedBox(
                height: 30,
               ),
               Container(
                decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 2
                  )
                )
              ),
               ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Profile(),));    
                },
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30),
                  title: Text("Profile",
                  style: BodyText,),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 2
                  )
                )
              ),
               ),
               InkWell(
                 onTap: () { 
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => YourOrders(),));   
                },
                 child: ListTile(
                  leading: Icon(
                    Icons.shopping_bag_sharp,
                    color: Colors.white,
                    size: 30),
                  title: Text("Your Orders",
                  style: BodyText,)
                             ),
               ),
               Container(
                decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 2
                  )
                )
              ),
               ),
               InkWell(
                 onTap: () {    
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Rewards(),));
                },
                 child: ListTile(
                  leading: Icon(
                    Icons.card_giftcard,
                    color: Colors.white,
                    size: 30),
                  title: Text("Rewards",
                  style: BodyText,),
                             ),
               ),
               Container(
                decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 2
                  )
                )
              ),
               ),
               InkWell(
                 onTap: () { 
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Settings(),));   
                },
                 child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 30),
                  title: Text("Settings",
                  style: BodyText,),
                             ),
               ),
               Container(
                decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 2
                  )
                )
              ),
               ),
               SizedBox(
                height: 80,
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 180),
                 child: ElevatedButton(
                   onPressed: () {
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => SignIn(),));
                   }, 
                   child: Text("Log Out",style: TextStyle(fontSize: 20),)),
               )
    
    
            ],
          ),
        ),
      ),
    );
  }
}