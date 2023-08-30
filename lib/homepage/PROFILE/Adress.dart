
import 'package:flutter/material.dart';

class AdressPage extends StatelessWidget {
  const AdressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
         Column(
          children: [
         SizedBox(height: 50,),
          Row(children: [
         SizedBox(width: 10,),
        IconButton(
          onPressed: (){
          Navigator.pop(context);
           },
        
         icon: Icon(Icons.arrow_back,
         color: Colors.black,
         ),
         ),
         SizedBox(width: 110,),
        Center(
           child: Text('Checkout',
           style: TextStyle(color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 20
           ),
           ),
         )
          ],),
      SizedBox(height: 30,),
       Padding(
         padding: const EdgeInsets.only(right: 220),
         child: Text('Your Address',
         style: TextStyle(fontSize: 18,
       fontWeight: FontWeight.bold, 
        color: Colors.black
         ),
         ),
       ),   
        SizedBox(height: 10,),
        Container(
         height: 100,
         width: 340,
         decoration: BoxDecoration(border: Border.all(color: Colors.blue.shade100)),
          child: Column(
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text('Home',
            style: TextStyle(color: Colors.black,
               fontWeight: FontWeight.bold,
               fontSize: 20
               ),
               
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text('Lucknow uttar Pradesh 223421\nindia',
             style: TextStyle(fontSize: 15,
             fontWeight: FontWeight.normal,
            color: Colors.grey,
             ),
            
            ),
          ),
                ],
          ),
        ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child:
           
           Text('Selected Time Slot',
             style: TextStyle(fontSize: 18,
             fontWeight: FontWeight.bold,
            color: Colors.black,
             ),
            
            ),
          ),
            SizedBox(height: 20,),
      
        Row(children: [
      SizedBox(width: 20,),
          Text(
            '0000-00-00',
      style: TextStyle(color: Colors.black,
      fontSize: 14,
      
      ),
          ),
      
              SizedBox(width: 120,),
      Container(
        height: 50,
        width: 150,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
       color: Color.fromARGB(255, 255, 255, 7),
       ),
        child: InkWell(
          onTap: (){
      
          },
          child: Align(
        child: Text('Change',
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 17,
        
        ),
        ),
          ),
        ),)
         ,
        
        ],),
         SizedBox(height: 30,),
        Container(
          height: 180,
          width: 350,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade100,
          ),
          child: Column(children: [
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.only(right: 145),
        child:   Text('Payment Summary',
        
        style: TextStyle(color: Colors.black,
        
        
        
        fontSize: 17,
        
        
        
        ),
        
        ),
      ),
      SizedBox(height: 5),
      Row(children: [
      
      SizedBox(width: 20,),
        Text('Subtotal',
         style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
         )
        ),
      SizedBox(width: 170,),
      Text('12999.0',
       style: TextStyle(
        color: Colors.grey,
          fontSize: 17,
        fontWeight: FontWeight.bold,
        )
      ),
      
      
      
      ],),
      
      SizedBox(height: 5),
      Row(children: [
      
      SizedBox(width: 20,),
        Text('Service Tax',
         style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
         )
        ),
      SizedBox(width: 180,),
      Text('0.0',
       style: TextStyle(
        color: Colors.grey,
          fontSize: 17,
        fontWeight: FontWeight.bold,
        )
      ),
      
      
      
      ],),
      SizedBox(height: 5),
      Row(children: [
      
      SizedBox(width: 20,),
        Text('Discount',
         style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
         )
        ),
      SizedBox(width: 200,),
      Text('0.0',
       style: TextStyle(
        color: Colors.grey,
          fontSize: 17,
        fontWeight: FontWeight.bold,
        )
      ),
      
      
      
      ],),
      
      SizedBox(height: 5),
      Row(children: [
      
      SizedBox(width: 20,),
        Text('Total',
         style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
         )
        ),
      SizedBox(width: 200,),
      Text('12999.0',
       style: TextStyle(
        color: Colors.grey,
          fontSize: 17,
        fontWeight: FontWeight.bold,
        )
      ),
      
      
      
      ],)
      
      
      
      
      
      
        ]),)
       
        
        
        
        ]),
      Positioned(
        top: 730,
        child: Container(
height: 200,
width: 395,
color: Colors.yellow,
          child: Column(children: [
        SizedBox(height: 10,),
        Row(children: [
SizedBox(width: 20,),
Text('Total Amount',
style: TextStyle(color: Colors.white,
fontSize: 15,
fontWeight: FontWeight.normal,
),

),
 SizedBox(width: 140,),
 Container(
height: 50,
width: 100,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(5),
color: Colors.white,
),
          child:Align(

            child: Text('Checkout',
            style: TextStyle(color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.normal,
          ),
          
            ),
          )
          
          ),


        ],),
   
   Padding(
     padding: const EdgeInsets.only(right: 240),
     child: Text('₹1259999.00',
        style: TextStyle(color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            ),
            
           
     ),
   )
      ]),
      ),
      )
      
      
      
      ]) ,
    );
  }
}