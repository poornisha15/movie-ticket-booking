import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:movie_ticket_booking_app/pages/thankyou.dart';
import 'package:movie_ticket_booking_app/widgets/customheader.dart';
import 'package:http/http.dart' as http ;

import '../widgets/movieinfo.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child:Column(
          children: [

            //customheaderwidget
            Customheader(size: size, content: "CheckOut Movie"),
            
            //borderline
            Container(
              margin: EdgeInsets.only(left: 10,right: 12,bottom: 12),
              padding: EdgeInsets.only(left: 24,bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 2
                  )
                )
              ),
              
              //moviedetails
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width/2,
                      child: Image.asset("asset/angrybird.jpg",
                    ),
                    ),
                   
                    //movieinfowidget
                    MovieInfo(size: size),
                    ],
                ),
                ),
                
                //buildmethodtags
                BuildPriceTag("Order ID", "1234567890"),
                BuildPriceTag("Date & Time", "SUN Nov 22, 11.00AM"),
                BuildPriceTag("SeatNumber", "A1,A2"),
                BuildPriceTag("Amount", "Rs. 240"),
               
                 //borderline
                Container(
                  margin: EdgeInsets.only(left: 10,right: 12,bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(
                      width: 2,
                      color: Colors.white70
                    ))
                  ),
                ),

                Padding(padding: EdgeInsets.all(50),
                child: TextButton(
                  onPressed: () async {
                    makePayment();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Thankyou(),));
                  }, child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 13, 48, 224)
              ),
              child: Center(
              child: Text("Pay",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white
              ),),
            ),),),)
          ])
          ));
  }
//buildmethodfor tags

  Container BuildPriceTag(String content, String Price) {
    return Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(content,
                    style: TextStyle(fontSize: 18,color: Colors.white60),),
                    Text(Price,
                    style: TextStyle(fontSize: 18,color: Colors.white),)
                    ],
                ),
              );
  }

  //payment function

  Map<String, dynamic>? PaymentIntentData;
void makePayment() async {
  PaymentIntentData = await CreatePaymentIntent("10", "INR");
  if(PaymentIntentData!=null){
  await Stripe.instance.initPaymentSheet(
    paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: PaymentIntentData!['Client_Secret'],
      googlePay: PaymentSheetGooglePay(
        merchantCountryCode: "India",
        testEnv:true,
         ),
         ));
  }
}
CreatePaymentIntent(String amount, String currency)async {
  Map<String, dynamic>? body = {
    "amount": amount,
    "currency": currency,
    "Payment method types[]": "Card"
  };
  print(body);
  var response = await http.post(Uri.parse('https://api.Stripe.com/V1/payment_intents'),
  body:body,
  headers:{
  'Authoriztion': 'Bearer sk_test_51LyuDzSDdIILtlHjgI65cruxyxHOhDSQFM7V9ywTHekyNoWDB7tjiXfXc8lyc6YbS1wLcS24A1YzGzhNghPpK29E00OOHfU0BF',
  'content_type' : 'application/x-www-form-urlencoded'}
  );
  return jsonDecode(response.body);
}

displayPaymentSheet () async {
  try{}
  catch(e){
    print(e);
  }
  await Stripe.instance.presentPaymentSheet(
    parameters: PresentPaymentSheetParameters(
      clientSecret: PaymentIntentData!['Client_Secret'],
      confirmPayment: true));
}
CalculateAmount(String amount){
  final CaluculateAmount = (int.parse(amount))*100;
  return CaluculateAmount.toString();
}


}


