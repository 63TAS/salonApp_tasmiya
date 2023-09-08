import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_salon_app/paymentgatwey/razorpay.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart'as http;

class PaymentPage extends StatefulWidget {
const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  var PaymentIntent;
 //Payment method
 
Future<void> makePayment() async {
    try {
      //STEP 1: Create Payment Intent
 PaymentIntent= await  createPaymentIntent('10000', 'INR');
 print('client_secret    ${PaymentIntent['client_secret']}');

      //STEP 2: Initialize Payment Sheet
      await Stripe.instance
          .initPaymentSheet(
            
              paymentSheetParameters: SetupPaymentSheetParameters(
                


paymentIntentClientSecret:
                   PaymentIntent[

                      'client_secret'], 
                      
                      
                      
                      //Gotten from payment intent
                  style: ThemeMode.light,
                  merchantDisplayName: 'Ikay'));
      // STEP 3: Display Payment sheet
      displayPaymentSheet();
        
    } catch (err) {
      throw Exception(err);
    }
  }

displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet().then((value) {
        
        //Clear paymentIntent variable after successful payment
        PaymentIntent = null;
      
      })
      .onError((error, stackTrace) {
        throw Exception(error);
      });
    } 
    on StripeException catch (e) {
    print('Error is:---> $e'); 
    } 
    catch (e) {
      print('$e');
    }
  }



  createPaymentIntent(String amount, 
  String currency
  ) async {
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount':amount,
        'currency': currency,
      };

      //Make post request to Stripe
      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization': 'Bearer sk_test_51NncNoSCmIVJo6rcFpDj2vb3gGlglDoDu4jn60ojgt6e2kvUetwLd8TUcGQiA4UUEhhzMWCoRaxkg4ZjuuVMDjIl004L4YIZLu',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: body,
      );
      var data= json.decode(response.body);
      return data;
      print('my payement  data   ${data}');
    } catch (err) {
      throw Exception(err.toString());
    }
  }
 
  @override 
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: [
        SizedBox(height: 60,),
        
        
        
        
        
        TextButton(
          onPressed: (){
            makePayment();

        },
         child: Text('Do Payment With Stripe ',
         style: TextStyle(color: Colors.purple,
         
        fontSize: 20,
         ),
         )),
           TextButton(
          onPressed: (){
            print('RAAS');
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RAZORPAYAGE(),));
            // RAZORPAYAGE();

        },
         child: Text('Do Payment With RazorPay ',
         style: TextStyle(color: Colors.purple,
         
        fontSize: 20,
         ),
         )),
     
     
      ]),
    );
  }
}