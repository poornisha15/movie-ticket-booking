import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/pages/onbording/signin.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'pages/homepage.dart';
import 'pages/onbording/createnewaccount.dart';
import 'pages/onbording/forgotpassword.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Stripe.publishableKey = "pk_test_51LyuDzSDdIILtlHjQK7uRh82YkSQa1jRdBMUngjilKFBDtppQZktPMd9igYRYpo9g2f4FYLzi7RMZe25JYTzkN3q00M7bbYeXI";
  await Stripe.instance.applySettings();
  Stripe.merchantIdentifier = 'merchant.flutter.stripe.test';
  Stripe.urlScheme = 'flutterstripe';
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'montserrat',
        scaffoldBackgroundColor: Color.fromARGB(255, 4, 7, 88),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white
        )

      ),
      home:  SignIn(),
      initialRoute: '/',
      routes: {
       'Forgot Password':(context) => ForgotPassword(), 
       'CreateNewAccount':(context) => CreateNewAccount()
      },
    );
  }
}
