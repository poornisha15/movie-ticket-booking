import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_booking_app/pages/onbording/components/backgroundimage.dart';
import 'package:movie_ticket_booking_app/pages/onbording/signin.dart';

import 'components/TextInput.dart';
import 'components/Textwidget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailcontroller =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [

      backgroundimage(),

      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
           onPressed: () {
            Navigator.pop(context);
           },),
           title: Text("Forgot Password",
           style: BodyText,),
           centerTitle: true,
        ),
        body: Column(children: [
          Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: Text("Enter your email we will send instruction to reset your password",
                      style: BodyText,),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextInput(
                icon: FontAwesomeIcons.solidEnvelope, 
                hint: "Email",
                inputType: TextInputType.emailAddress, 
                inputAction: TextInputAction.done,
                Controller: emailcontroller,
                validator: ((value) {
                          if (value!.isEmpty){
                            return "please enter the email";
                          }
                          return null;
                        }),),

                SizedBox(height: 20),

                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),),
                  onPressed: ()
                   {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                  }, child: Text("Send"))
            ],
          ),
        ],),
      ),
    ],
    );
  }
}