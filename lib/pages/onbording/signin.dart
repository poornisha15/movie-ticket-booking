import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_booking_app/pages/homepage.dart';

import 'authentication.dart';
import 'components/PasswordInput.dart';
import 'components/TextInput.dart';
import 'components/Textwidget.dart';
import 'components/backgroundimage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

 

  TextEditingController emailcontroller =  TextEditingController();
  TextEditingController passwordcontroller =  TextEditingController();
  
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //backgroundimagewidget
        backgroundimage(),

        //sigininputs
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                    SizedBox(
                      height: 200,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              //textinputwidget
                              TextInput(
                                hint: "Email",
                                icon: FontAwesomeIcons.solidEnvelope,
                                 inputType: TextInputType.emailAddress,
                                 inputAction: TextInputAction.next,
                                 Controller: emailcontroller,
                                 validator: ((value) {
                                  if (value!.isEmpty){
                                  return "please enter the email";
                                }
                                  return null;
                                }),
                              ),

                              //passwordinputwidget
                              PasswordInput(
                                hint: "Password",
                                icon: FontAwesomeIcons.lock, 
                                inputAction:TextInputAction.done, 
                                Controller: passwordcontroller,
                                validator: ((value) {
                                if (value!.isEmpty){
                                return "please enter the email";
                                }
                                return null;
                                }),
                              ),

                              //forgotpassword button
                              GestureDetector(
                                onTap: () => Navigator.pushNamed(context,"Forgot Password"),
                                child: Text("Forgot Password?",
                                style: BodyText,),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),

                              //sigin button
                              ElevatedButton(
                                onPressed: () async {
                                  await AuthenticationService(FirebaseAuth.instance)
                                  .firebaseLogin(emailcontroller.text.trim(), passwordcontroller.text.trim())
                                  .then((value) {
                                    if (value == "Signed in"){
                                      Navigator.push(
                                        context, 
                                        MaterialPageRoute(builder: (context) => MyHomePage(),));
                                        }
                                        else{
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(content:Text("enter the correct value"),
                                            backgroundColor: Colors.red, ));
                                            }}); 
                                            }, child: Text("Sign In",style: BodyText,),),
                              
                              SizedBox(
                                height: 80,
                              ),

                              //create newaccount button
                              GestureDetector(
                                onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Colors.white,width:5))
                                  ),
                                  child: Text("CreateNewAccount",style: BodyText),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}




