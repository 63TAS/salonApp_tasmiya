import 'package:flutter/material.dart';
import '../PROFILE/Accountpager.dart';

class comboPagebutton extends StatefulWidget {
  const comboPagebutton({super.key});

  @override
  State<comboPagebutton> createState() => _comboPagebuttonState();
}

class _comboPagebuttonState extends State<comboPagebutton> {
 
 int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child:   Column(children: [
        SizedBox(height: 40,),
           //Top ui
  
            Row(children: [
  
          SizedBox(width: 25,),
  
  
  
              Text('salon App',
  
              style: TextStyle(color: Colors.black,
  
              fontSize: 20,
  
              fontWeight: FontWeight.bold,
  
              ),
  
              ),
  
  
  
          SizedBox(width: 220,),
  
  
  
              IconButton(onPressed: (){
  
  
  
              }, icon: Icon(Icons.shopping_cart,
  
              color: Colors.grey,
  
  size: 30,
  
              )),
  
                   ],),
  
          
  
          SizedBox(height: 25,),
  
          SingleChildScrollView(
  
            scrollDirection: Axis.horizontal,
  
            child: Row(children: [
  
            SizedBox(width: 25,),
  
          
  
          Container(
  
            height: 40,
  
            width: 150,
  
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
  
            // color: Colors.blue.shade100,
  
            border: Border.all(
  
              color: Colors.black
  
              
  
              )
  
            ),
  
            child: Align(
  
          
  
              child: Text('Facial',
  
            style: TextStyle(
  
              color: Colors.black,
  
            fontWeight: FontWeight.bold,
  
            ),
  
            ),
  
            ),),
  
          SizedBox(width: 25,),
  
            InkWell(
  
   
  
              // onTap: Changebuttoncolor,
  
              child: Container(
  
              height: 40,
  
              width: 150,
  
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
  
              // color: Colors.blue.shade100,
  
             
  
              border: Border.all(color: Colors.black
  
              )
  
              ),
  
              child: Align(
  
                    
  
                child: Text('Mani &Pedi',
  
              style: TextStyle(color: Colors.black,
  
              fontWeight: FontWeight.bold,
  
              ),
  
              ),
  
              ),),
  
            ),
  
                   SizedBox(width: 25,),
  
  
  
            Container(
  
            height: 40,
  
            width: 150,
  
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
  
            border: Border.all(color: Colors.black)
  
            ),
  
            child: Align(
  
              child: Text('Application',
  
            style: TextStyle(color: Colors.black,
  
            fontWeight: FontWeight.bold,
  
            ),
  
            ),
  
            ),),
  
  
  
             SizedBox(width: 25,),
  
  
  
            Container(
  
            height: 40,
  
            width: 150,
  
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
  
            border: Border.all(color: Colors.black)
  
            ),
  
            child: Align(
  
          
  
              child: Text('Honey/ Rica',
  
            style: TextStyle(color: Colors.black,
  
            fontWeight: FontWeight.bold,
  
            ),
  
            ),
  
            ),),
  
  
  
            SizedBox(width: 25,),
  
  
  
            InkWell(
  
              onTap: (){
  
                // Navigator.push(context, MaterialPageRoute(builder:(context) => comboPagebutton(),));
  
              },
  
              child: Container(
  
              height: 40,
  
              width: 150,
  
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
  
            color: Colors.blue.shade100,
  
              border: Border.all(
  
                color: Colors.blue,
  
              
  
              )
  
              ),
  
              child: Align(
  
                    
  
                child: Text('Combos',
  
              style: TextStyle(color: Colors.black,
  
              fontWeight: FontWeight.bold,
  
              ),
  
              ),
  
              ),),
  
            ),
  
  
  
          
  
           SizedBox(width: 25,),
  
  
  
            Container(
  
            height: 40,
  
            width: 150,
  
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
  
            border: Border.all(color: Colors.black)
  
            ),
  
            child: Align(
  
          
  
              child: Text('Heena',
  
            style: TextStyle(color: Colors.black,
  
            fontWeight: FontWeight.bold,
  
            ),
  
            ),
  
            ),),
  
                     ],),
  
          ),
  
  
  
          //Mid ui
  
  SizedBox(height: 30,),
  
  //Mid Ui
  
  Container(
    height: 130,
    width: 370,
decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
color: Colors.grey.shade100,
),
    child: ListTile(
  enabled: true,
    leading: Container(
    
       height: 120,

      width: 80,
    
        child: Image.network(
    
           
    
            'https://i.pinimg.com/564x/26/5c/8e/265c8e3efb9e6d7e74bdba7e61284bea.jpg',
    
           
    
           fit: BoxFit.fitHeight,
    
           
    
            ),
    
      ),
    
    title: RichText(
    
      text: TextSpan(children: [
    
    
    
      TextSpan(text: 'Staright Blow Dry 2\n',
    
      style: TextStyle(color: Colors.black,
    
      fontWeight: FontWeight.bold,
    
      fontSize: 17,
    
    
    
      ),
    
      ),
    
    
    
    TextSpan(text: 'This is testing Service\n    ',
    
      style: TextStyle(color: Colors.grey,
    
      fontWeight: FontWeight.normal,
    
      fontSize: 12,
    
    
    
      ),
    
      ),
    
    WidgetSpan(
    
               child: SizedBox(height: 49), 
    
               // Add desired spacing here
    
             ),
    
    
    
    TextSpan(text: 'Rs 199',
    
      style: TextStyle(color: Colors.black,
    
      fontWeight: FontWeight.normal,
    
      fontSize: 12,
    
     decoration: TextDecoration.lineThrough,
    
      ),
    
      ),
    
    
    
      WidgetSpan(
    
               child: SizedBox(width: 10), // Add desired spacing here
    
             ),
    
    TextSpan(text: 'Rs 999 ',
    
      style: TextStyle(color: Colors.black,
    
      fontWeight: FontWeight.normal,
    
      fontSize: 14,
    
      ),
    
      ),
    
    
    
    ]),),
    
    trailing: Container(height: 40,
    
    width: 70,
    
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
    
    color: Colors.yellow,
    
    ),
    
    
    
    child: Align(
    
     child: Text('Add',
    
      style: TextStyle(
    
       color: Colors.white,
    
      ),
          ),
        )
        ),
        ),
  ),
  SizedBox(height: 30,),
    Container(
      height: 130,
      width: 370,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      color: Colors.grey.shade200,
      ),
      child: ListTile(
      
      leading: Container(
      
       height: 120,
      
      width: 80,
      
        child: Image.network(
      
           
      
            'https://i.pinimg.com/564x/26/5c/8e/265c8e3efb9e6d7e74bdba7e61284bea.jpg',
      
           
      
           fit: BoxFit.fitHeight,
      
           
      
            ),
      
      ),
      title: RichText(
        text: TextSpan(children: [
      
      TextSpan(text: 'Staright Blow Dry 2\n',
      
      style: TextStyle(color: Colors.black,
      
      fontWeight: FontWeight.bold,
      
      fontSize: 17,
      
      
      
      ),
      
      ),
      
      
      
      TextSpan(text: 'This is testing Service\n    ',
      
      style: TextStyle(color: Colors.grey,
      
      fontWeight: FontWeight.normal,
      
      fontSize: 12,
      
      
      
      ),
        ),
      
      WidgetSpan(
                 child: SizedBox(height: 49), 
                 // Add desired spacing here
               ),
      
      
      
      TextSpan(text: 'Rs 199',
      
      style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 12,
             decoration: TextDecoration.lineThrough,
            ),
      
      ),
      
      
      
      WidgetSpan(
                     child: SizedBox(width: 10), // Add desired spacing here
                  ),
      
      TextSpan(text: 'Rs 999 ',
            style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 14,
            ),
            ),
            ]),),
      
      trailing: Container(height: 40,
      
      width: 70,
      
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
      
      color: Colors.yellow,
      
      ),
      
      
      
      child: Align(
      
       child: Text('Add',
      
      style: TextStyle(
      
       color: Colors.white,
      
      ),
      
      ),
      
      )
      
      ),
      
      ),
    ),

     SizedBox(height: 30,),
    Container(
      height: 160,
      width: 370,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      color: Colors.grey.shade200,
      ),
      child: ListTile(
      
      leading: Container(
      
       height: 120,
      
      width: 80,
      
        child: Image.network(
      
           
      
            'https://i.pinimg.com/564x/26/5c/8e/265c8e3efb9e6d7e74bdba7e61284bea.jpg',
      
           
      
           fit: BoxFit.fitHeight,
      
           
      
            ),
      
      ),
      title: RichText(
        text: TextSpan(children: [
      
      TextSpan(text: 'Staright Blow Dry 2\n',
      
      style: TextStyle(color: Colors.black,
      
      fontWeight: FontWeight.bold,
      
      fontSize: 17,
      
      
      
      ),
      
      ),
      
      
      
      TextSpan(text: 'This is testing Service\n    ',
      
      style: TextStyle(color: Colors.grey,
      
      fontWeight: FontWeight.normal,
      
      fontSize: 12,
      
      
      
      ),
        ),
      
      WidgetSpan(
                 child: SizedBox(height: 49), 
                 // Add desired spacing here
               ),
      
      
      
      TextSpan(text: 'Rs 199',
      
      style: TextStyle(color: Colors.black,
      
      fontWeight: FontWeight.normal,
      
      fontSize: 12,
      
       decoration: TextDecoration.lineThrough,
      
      ),
      
      ),
      
      
      
      WidgetSpan(
      
               child: SizedBox(width: 10), // Add desired spacing here
      
             ),
      
      TextSpan(text: 'Rs 999 ',
      
      style: TextStyle(color: Colors.black,
      
      fontWeight: FontWeight.normal,
      
      fontSize: 14,
      
      ),
      
      ),
      
      
      
      ]),),
      
      trailing: Container(height: 40,
      
      width: 70,
      
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
      
      color: Colors.yellow,
      
      ),
      
      
      
      child: Align(
      
       child: Text('Add',
      
      style: TextStyle(
      
       color: Colors.white,
      
      ),
      
      ),
      
      )
      
      ),
      
      ),
    )
 
  
  
  
  
  
  
  
  
  
  ]),
),      
       
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update the selected tab index
          },
          );
        },
        items: [
          
          BottomNavigationBarItem(
            icon:Container(
              height: 40,
              child: Image.network(
'https://www.clker.com/cliparts/A/u/a/P/t/B/yellow-home-md.png',
                ),
            ),
                label: 'Home',
          ),
        
  BottomNavigationBarItem(
icon: Icon(Icons.book,
              color: Colors.grey,
              size: 30,
              ),
               
                label: 'booking',
                
          ),
        

        
          BottomNavigationBarItem(
             
              icon: Icon(Icons.movie_creation,
              color: Colors.grey,
              size: 30,
              ),
                label: 'credit',
          ),
               
              
          BottomNavigationBarItem(
                          icon: IconButton(icon: Icon(Icons.person,
               color: Colors.grey,
               size: 20,
              ),
              onPressed: (){
Navigator.push(context, MaterialPageRoute(builder:(context) =>  ProfilePage(),));
              },
              ),
             label: 'profile',
              ),
  
         
       
    
    ]
    ) ,
 

    );

  }
}