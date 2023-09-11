import 'package:flutter/material.dart';
import 'package:flutter_salon_app/Api/ApiFile.dart';
import 'package:flutter_salon_app/Auth/VerifyPage.dart';
import 'package:flutter_salon_app/homepage/Homepage.dart';
import 'package:flutter_salon_app/homepage/Loginpage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

TextEditingController _namecontroller = TextEditingController();
TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passwordcontroller = TextEditingController();

//Dilaog Box
 Widget _buildDialog(BuildContext context) {
  return AlertDialog(
    title: Text("Messages"),
    content: Text("${registerMessage?['message']}"),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          // Close the dialog
          Navigator.of(context).pop();
        },
  
        child: TextButton(onPressed: (){
          Future.delayed(Duration(seconds: 2), (){
Navigator.push(context,MaterialPageRoute(builder:(context) => Otpverifypage(),));

          });

        },
        child: Text('Close'),
        ),
      ),
    ],
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
body: SingleChildScrollView(
  child:   Column(children: [
  
   SizedBox(height: 100,),
  
    Padding(
  
      padding: const EdgeInsets.only(left: 5),
  
      child: RichText(text: TextSpan(children: [
  
  TextSpan(text: 'Welcome to ',
    style: TextStyle(color: Colors.purple,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    ),
  
  ),
  
  TextSpan(text: 'Salon App',
  
  style: TextStyle(color: Colors.white,
  
  fontSize: 33,
    fontWeight: FontWeight.bold
  
  )
  
  ),
  
      ],
  
      ),)
  
      
  
  ),
  
  
  
  SizedBox(height:160,),
  
  
  Padding(
  
    padding: const EdgeInsets.only(left: 30,
  
    right: 30,
  
    ),
  
    child:   TextField(
      controller: _namecontroller,
      decoration: InputDecoration(
  
    
  
     hintText: 'Enter name',

  
     fillColor: Colors.grey,
  filled: true,
     hintStyle: TextStyle(color: Colors.purple,
  
     fontSize: 20,
  
     ),
  
    
  
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
  
    
  
    borderSide: BorderSide(
  
    
  
      color: const Color.fromARGB(255, 28, 25, 29),
  
      
  
    )
  
    
  
    ),
  
    
  
    ),),
  
  ),
  SizedBox(height: 30,),
  
  Padding(
  
    padding: const EdgeInsets.only(left: 30,
  
    right: 30,
  
    ),
  
    child:   TextField(
      controller: _emailcontroller,
      decoration: InputDecoration(
  
    
  
     hintText: 'Enter email',
  
    fillColor: Colors.grey,
    filled: true,
  
     hintStyle: TextStyle(color: Colors.purple,
  
     fontSize: 20,
  
     ),
  
    
  
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
  
    
  
    borderSide: BorderSide(
  
    
  
      color: const Color.fromARGB(255, 28, 25, 29),
  
      
  
    )
  
    
  
    ),
  
    ),),
  
  ),
  
  
  
  SizedBox(height: 40,),
  
  Padding(
  
    padding: const EdgeInsets.only(left: 30,
  
    right: 30,
  
    ),
  
    child:   TextField(
      controller: _passwordcontroller,
      decoration: InputDecoration(
     hintText: 'Enter passowrd',
  
    fillColor: Colors.grey,
    filled: true,
  
     hintStyle: TextStyle(color: Colors.purple,
  
     fontSize: 20,
       ),
  
    
  
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
  
    
  
    borderSide: BorderSide(
  
    
  
      color: const Color.fromARGB(255, 28, 25, 29),
  
      
  
    )
  
    
  
    ),
  
    
  
    
  
    
  
    ),),
  
  ),
  
  
  
  SizedBox(height: 70,),
    InkWell(
      onTap: (){
getRegister(
  _namecontroller.text, 
_emailcontroller.text,
 _passwordcontroller.text
 );
      
     showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildDialog(context,);
                  },
                );
              },
     

      child: Container(
        decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
      color: Colors.purple,
      
      ),
      
      height: 50,
      width: 300,
      child: Align(
      
        alignment:Alignment.center,
        child: Text('Signup',
       style: TextStyle(color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
       ),
      ),
      
      
      
      ),),
    ),

  InkWell(
    onTap: (){
Navigator.push(context, MaterialPageRoute(
  builder:(context) => Loginpage(),));
    },
    child: Text('Do you have an account/Login',
  style:TextStyle(color: Colors.white,
  fontSize: 15,
  
  )
  
    ),
  )
  
  
  
  
  
  
  
  
  
  
  
  
  
  ]),
));
  }
}