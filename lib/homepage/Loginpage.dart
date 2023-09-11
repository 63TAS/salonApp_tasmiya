import 'package:flutter/material.dart';
import 'package:flutter_salon_app/Api/ApiFile.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
//  make conrtollers for login
TextEditingController namecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

 
 
 
 //Dilaog Box
 Widget _buildDialog(BuildContext context) {
  return AlertDialog(
    title: Text("Messages"),
    content: Text("${loginUser?['message']}"),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          // Close the dialog
          Navigator.of(context).pop();
        },
  
        child: TextButton(onPressed: (){
//           Future.delayed(Duration(seconds: 2), (){
// Navigator.push(context,MaterialPageRoute(builder:(context) => HomePage(),));

          // });

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
  
      padding: const EdgeInsets.only(right: 200),
  
      child: Text('Login',
      style: TextStyle(color: Colors.purple,
      fontSize: 40,
      fontWeight: FontWeight.bold
      ),
      
      )
      
  
  ),
  
  
  
  SizedBox(height:160,),
  
  
  Padding(
  
    padding: const EdgeInsets.only(left: 30,
  
    right: 30,
  
    ),
  
    child:   TextField(
      controller: emailcontroller,
      decoration: InputDecoration(
  
    
  
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
SizedBox(height: 30,),
Padding(
  
    padding: const EdgeInsets.only(left: 30,
  
    right: 30,
  
    ),
  
    child:   TextField(
      controller: passwordcontroller,
      decoration: InputDecoration(
  
    
  
     hintText: 'Enter password',

  
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
 //hit Api for login
//  getlogin(namecontroller.text, emailcontroller.text, passwordcontroller.text);
 getOrderDetails();
 showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildDialog(context,);
                  },
                );
              },
    


  child:   Container(
  
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
  
        color: Colors.purple,
  
        
  
        ),
  
        
  
        height: 50,
  
        width: 300,
  
        child: Align(
  
        
  
          alignment:Alignment.center,
  
          child: Text('Login',
  
         style: TextStyle(color: Colors.white,
  
        fontSize: 20,
  
        fontWeight: FontWeight.bold,
  
         ),
  
        ),
  
        
  
        
  
        
  
        ),),
),
 ])) );
  }
}