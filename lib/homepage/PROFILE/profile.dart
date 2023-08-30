import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(children: [
        SizedBox(height: 60,),
          Row(children: [
            IconButton(onPressed: (){
      
            }, icon: Icon(Icons.arrow_back,
            color: Colors.black,
            ),
            ),
            SizedBox(width: 100,),
      Text('My Profile',
      style: TextStyle(color: Colors.black,
      
      fontSize: 25,
      
      fontWeight: FontWeight.bold,
      ),
      ),
      
          ]),
      SizedBox(height: 25,),
      Padding(
      padding: EdgeInsets.only(right: 280),
        child:   Text('Full Name*',
        
        style: TextStyle(color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.normal,
          ),
        
        ),
      ),
      Container(
        height: 100,
        width: 343,
        child:   TextField(
        
          decoration: InputDecoration(
        
        hintText: 'Mukhesh Gupta',
        
        hintStyle: TextStyle(color: Colors.grey,
          fontSize: 15,
        
        
        
        fontWeight: FontWeight.normal,
        
        ),
        
        
        
        border: OutlineInputBorder(
        
          borderRadius: BorderRadius.circular(5),
        
        borderSide: BorderSide(color: Colors.black,
                ),
                )
        
        ),),
      ),
      
      SizedBox(height: 10,),
      Padding(
      padding: EdgeInsets.only(right: 280),
        child:   Text('Email id*',
        
        style: TextStyle(color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.normal,
          ),
        
        ),
      ),
      Container(
        height: 100,
        width: 343,
        child:   TextField(
        
          decoration: InputDecoration(
        
        hintText: 'mukeshgupta@developer.com',
        
        hintStyle: TextStyle(color: Colors.grey,
          fontSize: 15,
        
        
        
        fontWeight: FontWeight.normal,
        
        ),
        
        
        
        border: OutlineInputBorder(
        
          borderRadius: BorderRadius.circular(5),
        
        borderSide: BorderSide(color: Colors.black,
        
        ),
        
        )
        
        ),),
      ),
      
      SizedBox(height: 10,),
      Padding(
      padding: EdgeInsets.only(right: 250),
        child:   Text('Mobile Number*',
        
        style: TextStyle(color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.normal,
          ),
        
        ),
      ),
      Container(
        height: 100,
        width: 343,
        child:   TextField(
        
          decoration: InputDecoration(
          
        hintText: '+91 123456789',
        
        hintStyle: TextStyle(color: Colors.grey,
          fontSize: 15,
        
        
        
        fontWeight: FontWeight.normal,
        
        ),
        
        
        
        border: OutlineInputBorder(
        
          borderRadius: BorderRadius.circular(5),
        
        borderSide: BorderSide(color: Colors.black,
        
        ),
        
        )
        
        ),),
      ),
      
      
          
      
          
          
      
      
          
      
          
      SizedBox(height: 10,),
      Padding(
      padding: EdgeInsets.only(right: 280),
        child:   Text('Location*',
        
        style: TextStyle(color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.normal,
          ),
        
        ),
      ),
      Container(
        height: 100,
        width: 343,
        child:   TextField(
        
          decoration: InputDecoration(
          
        hintText: 'Gorakhpur',
        
        hintStyle: TextStyle(color: Colors.grey,
          fontSize: 15,
        fontWeight: FontWeight.normal,
                ),
        
        
        
        border: OutlineInputBorder(
        
          borderRadius: BorderRadius.circular(5),
        
        borderSide: BorderSide(color: Colors.black,
        
        ),
        
        )
        
        ),),
      ),

      SizedBox(height: 10,),
      Container(
        height: 100,
        width: 343,
        child:   TextField(
        
          decoration: InputDecoration(
          
      
        
       suffixIcon:  IconButton(
        onPressed: (){

        },
        icon: Icon(Icons.arrow_drop_down_outlined,
        color: Colors.black,
        )),
        hintStyle: TextStyle(color: Colors.grey,
          fontSize: 15,
        fontWeight: FontWeight.normal,
                ),
        
        
        
        border: OutlineInputBorder(
        
          borderRadius: BorderRadius.circular(5),
        
        borderSide: BorderSide(color: Colors.black,
        
        ),
        
        )
        
        ),),
      ),

      SizedBox(height: 30,),
      Container(height: 50,
      
      width: 340,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      color: Colors.yellow,
            ),
            child: Align(
        child: Text('Save',
        style: TextStyle(color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold
      
          ),
        ),
      ),
      ),
      Container(height: 120,),
      
          
      
          
                ]),
      ),
    );
  }
}