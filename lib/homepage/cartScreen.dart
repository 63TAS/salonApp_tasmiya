import 'package:flutter/material.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  void initState(){
    super.initState();

  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(children: [
  
  SizedBox(height: 10,),
  Container(
    height: 100,
    child: Card(
     shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(4)),
     color: Colors.white,
      child: Row(
      children: [
        IconButton(
        onPressed: (){
   Navigator.pop(context);
       }, 
      icon: Icon(Icons.arrow_back),
          ),
    
    SizedBox(width:120
    ),
   
   Text('Cart',
   style: TextStyle(color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.bold,
     ),
   ),
      ]),
    elevation: 2,
    ),
  ),
SizedBox(height: 30,),





// Container(
// height: 140,
// width: 360,
// decoration: BoxDecoration(
//   borderRadius: BorderRadius.circular(10),
// color: Colors.grey.shade100,
// ),

//   child: ListTile(  
//     leading: Container(
//       child: Image.network(
//         'https://i.pinimg.com/564x/fa/05/dc/fa05dca0a7d56487e0e907e0ac1e8bcc.jpg',
//        fit: BoxFit.cover,
//                ),
//     ),
//   trailing: IconButton(
//   onPressed: (){
  
//   },
  
//   icon: Icon(Icons.delete,
//   color: Colors.red,
//   )),
  
//   title: Row(
//   children: [
//         RichText(text: TextSpan(children: [
    
//     TextSpan(text: 'Summer Facial\n',
    
//     style: TextStyle(color: Colors.black,
    
//     fontWeight: FontWeight.bold,
    
//     fontSize: 15,
    
//     )
    
//     ),
    
//     TextSpan(text: 'test\n',
    
//     style: TextStyle(
    
//       color: Colors.black,
    
//     fontWeight: FontWeight.normal,
    
//     fontSize: 10,
    
//     )
    
//     ),
//           WidgetSpan(
    
        
    
//                    child: SizedBox(height: 40), // Add desired spacing here
    
        
    
//                  ),
    
//     TextSpan(text: '999',
    
//     style: TextStyle(color: Colors.black,
    
//     fontWeight: FontWeight.bold,
    
//     fontSize: 15,
    
//     decoration: TextDecoration.lineThrough,
    
//     )
    
//     ),
    
    
    
//           WidgetSpan(
    
        
    
//                    child: SizedBox(width: 10), // Add desired spacing here
    
        
    
//                  ),
    
//     TextSpan(text: 'Rs 2500',
    
//     style: TextStyle(color: Colors.black,
    
//     fontWeight: FontWeight.normal,
    
//     fontSize: 18,
    
//     )
    
//     ),
    
    
    
    
    
//     ]
    
    
    
//     ),
    
    
    
//     ),
   
   
  //  Padding(
  //    padding: const EdgeInsets.symmetric(horizontal: 40),
  //    child: CircleAvatar(
  //     radius: 10,
  //      child: Text('-',
  //      style:TextStyle(color: Colors.blue,
     
  //      )
     
  //      ),
  //    ),
  //  )
   
//   ],
//   ),
//   ),
// ),
SizedBox(height: 50,),
Container(
  height: 50,
  width: 370,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
  color: Colors.yellow,
  ),
  child: Align(
    child: Text('continue',
   style: TextStyle(color: Colors.white,
    
    fontWeight: FontWeight.bold,
    
    fontSize: 18,
    
    )
    
   
  
  ),
  ),)




]),

    );
  }
}