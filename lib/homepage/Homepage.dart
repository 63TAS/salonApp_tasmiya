import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_salon_app/homepage/ButtonDesign/combuttonPage.dart';
import 'package:flutter_salon_app/homepage/cartScreen.dart';
import 'PROFILE/Accountpager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
 int currentIndex = 0;

Color _buttonColor = Colors.blue.shade100;


//method for Colors button 
void Changebuttoncolor(){
  setState(() {
    _buttonColor = Colors.pink.shade100;
  });
}



  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
Navigator.push(context, MaterialPageRoute(builder:(context) => cartScreen(),));
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
          color: Colors.blue.shade100,
          border: Border.all(color: Colors.blue)
          ),
          child: Align(
        
            child: Text('Facial',
          style: TextStyle(color: Colors.blue,
          fontWeight: FontWeight.bold,
          ),
          ),
          ),),
        SizedBox(width: 25,),
          InkWell(
 
            onTap: Changebuttoncolor,
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
              Navigator.push(context, MaterialPageRoute(builder:(context) => comboPagebutton(),));
            },
            child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black)
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
SizedBox(height: 130,),
Container(
  // color: Colors.white,
  height: 140,
width:160,
child: Image.network(
'https://i.pinimg.com/564x/c6/1a/7f/c61a7f7923ce87b7dc54809c73f65f30.jpg',
),
),
Text('No data found',
style: TextStyle(color: Colors.grey,
fontSize:20,
fontWeight: FontWeight.bold,
),
),
Text('No data Found please try again later',
style: TextStyle(color: Colors.grey,
fontSize:15,
fontWeight: FontWeight.normal,
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