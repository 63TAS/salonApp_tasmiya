import 'package:flutter/material.dart';
import 'package:flutter_salon_app/homepage/Homepage.dart';
import 'package:flutter_salon_app/main.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
@override
void initState(){
Future.delayed(Duration(seconds: 3),(){
  Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
});
  super.initState();
}


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(children: [
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
SizedBox(height: 50,),
AnimatedContainer(
  duration: Duration(seconds: 1,),
  curve: Curves.easeInOut,
width: 300,
height: 200,
  child: Image.network('https://i.pinimg.com/564x/a7/76/eb/a776eb5d711703f54b579f660b3ba55e.jpg'))

      ]),
    );
  }
}