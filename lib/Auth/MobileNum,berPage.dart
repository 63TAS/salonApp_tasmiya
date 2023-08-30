import 'package:flutter/material.dart';
import 'package:flutter_salon_app/Auth/WelcomePage.dart';

class MobileNumberPage extends StatelessWidget {
  const MobileNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    SizedBox(height: 100,),
Center(
  child:   RichText(text: TextSpan(children: [
   
  
    TextSpan(text: 'Hi, Welcome to  ',
  
  
  
    style: TextStyle(fontSize: 20,
  
  
  
    fontWeight: FontWeight.normal,
  
  color: Colors.black,
  
    )
  
  
  
    ),
  
  
  
  
  
  
  
  TextSpan(text: 'Beauty Salon',
  
  
  
  
  
  
  
  style: TextStyle(fontWeight: FontWeight.bold,
  
  
  
  fontSize: 20,
  
  color: Colors.black,
  
  )
  
  
  
  )
  
  
  
  ]
  
  
  
  ),
  
  
  
  ),
),



SizedBox(height: 130,),

Padding(
  padding: const EdgeInsets.only(right: 120),
  child:   Text('Login with  your Mobile Number',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  
  ),
  
  ),
),
SizedBox(height:5,),
Padding(
  padding: const EdgeInsets.only(right: 300),
  child:   Text('Phone*',
  
  style: TextStyle(color: Colors.black,
    fontSize: 12,
    ),
    ),
),


SizedBox(height: 5,),
Padding(
  padding: const EdgeInsets.only(left: 30,
  right:30
  ),
  child:   TextField(
  autofocus: false,
   
   enabled: true,
    decoration: InputDecoration(
  
    hintText: 'Phone Number',
  
    hintStyle: TextStyle(color: Colors.grey),
  
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
  
  borderSide: BorderSide(color: Colors.black)
  
  )),),
),
SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.only(right:65),
  child:   Text('Enter your 10 digit Mobile Number',
  
  style: TextStyle(color: Colors.grey,
  
  fontSize: 17,
  
  ),
 
  ),
),


SizedBox(height: 30,),
InkWell(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(
      builder:(context) => WelcomePage(),));
  },
  child:   Container(
    height: 40,
  
  width: 350,
  
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
  
  color: Color.fromRGBO(255, 236, 62, 1),
  
  ),
  
  
  
  child: Align(
  
  
  
    child:   Text('send OTP',
  
    
  
    style: TextStyle(color: Colors.white,
  
    
  
      
  
    
  
      fontSize: 20,
  
    
  
      fontWeight: FontWeight.bold
  
    
  
    )
  
    
  
    ),
  
  ),
  
  ),
)
]),

    );
  }
}