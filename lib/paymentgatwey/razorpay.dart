import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RAZORPAYAGE extends StatefulWidget {
  const RAZORPAYAGE({super.key});

  @override
  State<RAZORPAYAGE> createState() => _RAZORPAYAGEState();
}

class _RAZORPAYAGEState extends State<RAZORPAYAGE> {
 final razorpay = Razorpay();
  

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print('$response');
  // Do something when payment succeeds
}

void _handlePaymentError(PaymentFailureResponse response) {
  print('_handlePaymentError   $response');
  // Do something when payment fails
}

void _handleExternalWallet(ExternalWalletResponse response) {
  print('$response');
  // Do something when an external wallet was selected
}

       var options = {
                       'key': 'rzp_live_x70g3BDAwzJi70',
                       'amount': 100,
                       'name': 'Acme Corp.',
                       'description': 'Fine T-Shirt',
                       'retry': {'enabled': true, 'max_count': 1},
                       'order_id': '11', // Different OrderID
                       'send_sms_hash': true,
                       'prefill': {
                         'contact': '8888888888',
                         'email': 'test@razorpay.com'
                       },
                       'external': {
                         'wallets': ['paytm']
                       }
         };


//  var options = {
//   'key': 'rzp_live_x70g3BDAwzJi70',
//   'amount': 100,
//   'order_id':'1'
//   'name': 'Acme Corp.',
//   'description': 'Fine T-Shirt',
//   'prefill': {
//     'contact': '8888888888',
//     'email': 'test@razorpay.com'
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SafeArea(
        child: Column(children: [
          TextButton(
            onPressed: ()async{
      
            razorpay.open(options,
            );
      
      
            razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
      razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
        razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
      
      
      
          }, child: Text('Pay with Razorpay'))
        ]),
      ) ,

    );
  }
}