import 'dart:isolate';

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

//for loading 
bool isLoading= false;

//for messages box
bool isEmptyFileds = true;
//Dilaog Box for cancallation in account creation

 Widget _buildDialog(BuildContext context) {
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
    
    return AlertDialog(
      title: Text("Messages"),
      content: Text("${registerMessage?['message']}"),
      actions: <Widget>[
      TextButton(
        onPressed: (){
 Navigator.pop(context);
  

          },
          child:
              Text('Close'),
           
          ),
        
      ],
    
 );});
}

//dialog box for sccessfully account create

Widget _buildAnotherdilaog(BuildContext context) {
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
    
    return AlertDialog(
      title: Text("Messages"),
      content: Text("${registerMessage?['message']}"),
      actions: <Widget>[
        
      ],
    
 );});
}



//validation for textfields
String emailErrorText = '';
String passowrdErrorText = '';
String nameErrorText = '';

//validation for email

String? validateEmail(String value){
  if(value.isEmpty){
return 'Email is required';
  }else{
        if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
return 'Enter valid email address';
  }else{
    return null;
  }}}

  //for password name
  String ? validationPassword(String value){
    if(value.isEmpty){
      return 'Password is required';
    }else{
      if(value.length <6){
        return 'Password is at least 6 characters';
      }
    }
  }

String? validatename(String value){
if(value.isEmpty){
  return 'This field is required';
}else{
return null;
}
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
      obscureText: true,
      decoration: InputDecoration(
  
    errorText: nameErrorText,
  
     hintText: 'Enter name',

  
     fillColor: Colors.grey,
  filled: true,
     hintStyle: TextStyle(color: Colors.purple,
  
     fontSize: 17,
  
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
  
    child:   TextFormField(
      controller: _emailcontroller,
obscureText: true,
      decoration: InputDecoration(
  
    errorText: emailErrorText,
    
  
     hintText: 'Enter email',
  
    fillColor: Colors.grey,
    filled: true,
  
     hintStyle: TextStyle(color: Colors.purple,
  
     fontSize: 17,
  
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
  
    child:   TextFormField(
      controller: _passwordcontroller,
    obscureText: true,
    //  validator: validationPassword,
      decoration: InputDecoration(
     hintText: 'Enter passowrd',
  errorText: passowrdErrorText,
   
    fillColor: Colors.grey,
    filled: true,
  
     hintStyle: TextStyle(color: Colors.purple,
  
     fontSize: 17,
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
  print(isEmptyFileds);
getRegister(
  _namecontroller.text, 
_emailcontroller.text,
 _passwordcontroller.text
 );
      Future.delayed(Duration(seconds: 1), (){

if(isEmptyFileds){
// setState(() {
//   isEmptyFileds = true;
// });
  showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildAnotherdilaog(context,);
                      }
   
            );
             
      }else{
         showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildDialog(context,);
                      }
         );
      }
      }
      );
    
             
             setState(() {
               emailErrorText= validateEmail(_emailcontroller.text)?? '';
               passowrdErrorText = validationPassword(_passwordcontroller.text)?? '';
            nameErrorText = validatename(_namecontroller.text) ??'';
             });
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