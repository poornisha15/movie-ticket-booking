import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_booking_app/pages/onbording/components/backgroundimage.dart';
import 'package:movie_ticket_booking_app/pages/onbording/signin.dart';

import 'authentication.dart';
import 'components/PasswordInput.dart';
import 'components/TextInput.dart';
import 'components/Textwidget.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  
  TextEditingController emailcontroller =  TextEditingController();
  TextEditingController passwordcontroller =  TextEditingController();
  TextEditingController namecontroller =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [

        //backgroungimagewidget
        backgroundimage(),

        //inputs
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3,
                          sigmaY: 3),
                          child: CircleAvatar(
                            radius: size.width * 0.15,
                            backgroundColor: Colors.grey[400]?.withOpacity(0.8),
                          child: Icon(FontAwesomeIcons.user,
                          color: Colors.white,
                          size: size.width * 0.1,),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        width: size.width * 0.1,
                        height: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          )
                        ),
                        child: Icon(FontAwesomeIcons.arrowUp,
                        color: Colors.white,),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [

                    //TextInput
                    TextInput(
                      icon: FontAwesomeIcons.user, 
                      hint: "User Name", 
                      inputType: TextInputType.name, 
                      inputAction: TextInputAction.next,
                      Controller: namecontroller,
                      validator: ((value) {
                          if (value!.isEmpty){
                            return "please enter the name";
                          }
                          return null;
                        }),),

                      //TextInput
                    TextInput(
                      icon: FontAwesomeIcons.envelope, 
                      hint: "Email", 
                      inputType: TextInputType.emailAddress, 
                      inputAction: TextInputAction.next,
                      Controller: emailcontroller,
                      validator: ((value) {
                          if (value!.isEmpty){
                            return "please enter the email";
                          }
                          return null;
                        }),),

                      //PasswordInput
                      PasswordInput(
                        icon: FontAwesomeIcons.lock, 
                        hint: "Password", 
                        inputAction: TextInputAction.next,
                        Controller: passwordcontroller,
                        validator: ((value) {
                          if (value!.isEmpty){
                            return "please enter the password";
                          }
                          return null;
                        }),),

                        //PasswordInput
                        PasswordInput(
                        icon: FontAwesomeIcons.lock, 
                        hint: "Confirm Password", 
                        inputAction: TextInputAction.done,
                        Controller: passwordcontroller,
                        validator: ((value) {
                          if (value!.isEmpty){
                            return "please enter the password";
                          }
                          return null;
                        }),),

                        SizedBox(
                          height: 25,
                        ),

                        //SignIn button
                       MaterialButton(color: Colors.blue,
                       child: Text("Register",
                        style: BodyText,),
                       onPressed: () async {
                      await AuthenticationService(FirebaseAuth.instance)
                      .firebaseregister(emailcontroller.text.trim(),passwordcontroller.text.trim())
                      .then((value) {
                        if (value == "Signed up"){
                          Navigator.push(
                          context, 
                      MaterialPageRoute(builder: (context) => SignIn(),));
                        }
                        else{
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content:Text("enter the correct value"),
                            backgroundColor: Colors.red, ));
                        }});
                       }),

                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?",
                            style: BodyText,),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/');
                              },
                              child: Text("Log In",
                              style: BodyText.copyWith(color: Colors.red,fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 25)
                          ],
                        )
                  ],
                ),
              ],
            ),
      ))]);
  }
}