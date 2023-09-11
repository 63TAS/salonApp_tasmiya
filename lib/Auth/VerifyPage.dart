import 'package:flutter/material.dart';
import 'package:flutter_salon_app/Api/ApiFile.dart';
import 'package:flutter_salon_app/homepage/Homepage.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Otpverifypage extends StatefulWidget {
  const Otpverifypage({super.key});

  @override
  State<Otpverifypage> createState() => _OtpverifypageState();
}

class _OtpverifypageState extends State<Otpverifypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
        SizedBox(height: 150,),
Padding(
  padding: const EdgeInsets.only(left: 30),
  child:   RichText(text: TextSpan(children: [
  
    TextSpan(text: 'Hi, Welcome to ',
  
    
  
    style: TextStyle(fontSize: 20,
  
    fontWeight: FontWeight.normal,
  
    color: Colors.black
  
    ),
  
    ),
  
  TextSpan(text: 'Beauty salon',
  
   style: TextStyle(fontSize: 20,
  
  color: Colors.black,
  
    fontWeight: FontWeight.bold,
  
    ),
  
   
  
  )
  
  
  
  ],
  
  )),
),
SizedBox(height: 60,),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child:   OTPTextField(
   
   keyboardType: TextInputType.number,
    length: 3,
    width:300,
  
    //  MediaQuery.of(context).size.width,
  
    fieldWidth: 80,
  
    style: TextStyle(
  
      fontSize: 17
  
    ),
  isDense: true,
  
    textFieldAlignment: MainAxisAlignment.spaceAround,
  outlineBorderRadius: 50,
    fieldStyle: FieldStyle.underline,
  
    onCompleted: (pin) {
  
      print("Completed: " + pin);
  
    },
  
  ),
),
SizedBox(height: 60,),
Center(
  child:   InkWell(
    onTap: (){
   getVerify();
   Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
   
    },
    child: Container(
    
      height: 40,
    
      width: 270,
    
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
    
      color: Colors.yellow,
    
    
    
      ),
    
      child: Align(
    
        alignment: Alignment.center,
    
        child: Text('Verify',
    
      style: TextStyle(color: Colors.white,
    
      fontSize: 25,
    
      fontWeight: FontWeight.bold,
    
      ),
    
      ),
    
      ),),
  ),
)

        ]),
      ),
    );
  }
}