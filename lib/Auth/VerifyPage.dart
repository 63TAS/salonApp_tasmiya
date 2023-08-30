// import 'package:flutter/material.dart';
// import 'package:otp_text_field/otp_text_field.dart';


// class VerifyPage extends StatefulWidget {
//   const VerifyPage({super.key});

//   @override
//   State<VerifyPage> createState() => _VerifyPageState();
// }

// class _VerifyPageState extends State<VerifyPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// backgroundColor: Colors.blue,
// body: Column(children: [
  
//   SizedBox(height: 100,),
// Center(
//   child:   RichText(text: TextSpan(children: [
   
  
//     TextSpan(text: 'Hi, Welcome to  ',
  
  
  
//     style: TextStyle(fontSize: 20,
  
  
  
//     fontWeight: FontWeight.normal,
  
//   color: Colors.black,
  
//     )
  
  
  
//     ),
  
//   TextSpan(text: 'Beauty Salon',
  
  
  
//   style: TextStyle(fontWeight: FontWeight.bold,
//   fontSize: 20,  
//   color: Colors.black,
//     )
//    )
//    ]
   
//   ),
    
//   ), 
// ),
// SizedBox(height: 40,),
// SingleChildScrollView(
//  scrollDirection: Axis.horizontal,
//   child:   OTPTextField(
  
//     length: 4,
  
//     width: 30,
//   spaceBetween: 0,
//     fieldWidth: 60,
  
//     style: TextStyle(
  
//       fontSize: 17
  
//     ),
  
//     textFieldAlignment: MainAxisAlignment.spaceAround,
  
//     onCompleted: (pin) {
  
//       print("Completed: " + pin);
  
//     },
  
//   ),
// ),


// ]),

//     );
//   }
// }