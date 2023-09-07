import 'package:flutter/material.dart';


class DateTimePage extends StatefulWidget {
const DateTimePage({super.key});
  @override
  State<DateTimePage> createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(children: [
 SizedBox(height: 50,),
  Row(children: [
    IconButton(
      onPressed: (){
Navigator.pop(context);
    }, 
    icon: Icon(Icons.arrow_back,
    color: Colors.black,
    ),
    ),

    SizedBox(width: 120,),
    Text('Date &Time',
    style: TextStyle(color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ), 
  
  ],),

 SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.only(right: 80),
      child: Text('Which professionals do you refer',
      style: TextStyle(color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.bold,
      ),
      ),
    ), 
   Padding(
     padding: const EdgeInsets.only(right:60),
     child: Text('Top rated professionals in your area',
      style: TextStyle(color: Colors.grey,
      fontSize: 17,
      fontWeight: FontWeight.bold,
      ),
      ),
   ), 
  SizedBox(height: 20,),
  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(children: [
  SizedBox(width: 20,),
   Container(
    height: 290,
    width: 250,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
    color: Colors.grey.shade100,
    border: Border.all(color: Colors.grey)
    ),
    child: Column(
      children: [
        SizedBox(height: 20,),
   Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.blue,
    
      ),
      borderRadius: BorderRadius.circular(30)
      ),
     child: CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(
      'https://i.pinimg.com/564x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
      
      ),),
   ),
    
    
    SizedBox(height: 15,),
    Text('Auto Assign',
    style: TextStyle(fontWeight: FontWeight.normal,
    fontSize: 17,
    ),
    ),
  
    SizedBox(height: 15,),
    Text('Mobile No. :993514890',
    style: TextStyle(fontWeight: FontWeight.normal,
    fontSize: 14,
    ),
    ),
  
     SizedBox(height: 15,),
    Text('Experience 3.5 Years',
    style: TextStyle(fontWeight: FontWeight.normal,
    fontSize: 14,
    ),
    ),
  
     SizedBox(height: 15,),
    Text('We will assign  the best \n      professionals',
    style: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 14,
   color: Colors.grey
    ),
    )
  
  
  
  
  
    ]) , 
    ),
  SizedBox(width: 10,),
   Container(
    height: 290,
    width: 250,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
    color: Colors.grey.shade100,
    border: Border.all(color: Colors.grey)
    ),
    child: Column(
      children: [
        SizedBox(height: 20,),
   Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.blue,
    
      ),
      borderRadius: BorderRadius.circular(30)
      ),
     child: CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(
      'https://i.pinimg.com/564x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
      
      ),),
   ),
    
    
    SizedBox(height: 15,),
    Text('Auto Assign',
    style: TextStyle(fontWeight: FontWeight.normal,
    fontSize: 17,
    ),
    ),
  
    SizedBox(height: 15,),
    Text('Mobile No. :993514890',
    style: TextStyle(fontWeight: FontWeight.normal,
    fontSize: 14,
    ),
    ),
  
     SizedBox(height: 15,),
    Text('Experience 3.5 Years',
    style: TextStyle(fontWeight: FontWeight.normal,
    fontSize: 14,
    ),
    ),
  
     SizedBox(height: 15,),
    Text('We will assign  the best \n      professionals',
    style: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 14,
   color: Colors.grey
    ),
    )
  
  
  
  
  
    ]) , 
    ),
   SizedBox(width: 10,),
   Container(
    height: 290,
    width: 250,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
    color: Colors.grey.shade100,
    border: Border.all(color: Colors.grey)
    ),
    child: Column(
      children: [
        SizedBox(height: 20,),
   Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.blue,
    
      ),
      borderRadius: BorderRadius.circular(30)
      ),
     child: CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(
      'https://i.pinimg.com/564x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
      
      ),),
   ),
    
    
    SizedBox(height: 15,),
    Text('Auto Assign',
    style: TextStyle(fontWeight: FontWeight.normal,
    fontSize: 17,
    ),
    ),
  
    SizedBox(height: 15,),
    Text('Mobile No. :993514890',
    style: TextStyle(fontWeight: FontWeight.normal,
    fontSize: 14,
    ),
    ),
  
     SizedBox(height: 15,),
    Text('Experience 3.5 Years',
    style: TextStyle(fontWeight: FontWeight.normal,
    fontSize: 14,
    ),
    ),
  
     SizedBox(height: 15,),
    Text('We will assign  the best \n      professionals',
    style: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 14,
   color: Colors.grey
    ),
    ),
            ]) , 
    ),
      ],
    ),
  ),


SizedBox(height: 20,),
Padding(
  padding: const EdgeInsets.only(right: 130),
  child:   Text('when would you like your service?',
  
   style: TextStyle(fontWeight: FontWeight.normal,
  
      fontSize: 14,
  
     color: Colors.black
  
      ),
  
     
  
  ),
),
SizedBox(width: 20,),


]),
    );
  }
}