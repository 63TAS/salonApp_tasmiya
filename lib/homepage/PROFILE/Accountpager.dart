import 'package:flutter/material.dart';
import 'package:flutter_salon_app/homepage/Homepage.dart';
import 'package:flutter_salon_app/homepage/PROFILE/Adress.dart';
import 'package:flutter_salon_app/homepage/PROFILE/profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 
 int currentIndex = 0;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
         SizedBox(height: 100,),
          Container(
            // height: 100,
            // width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
          
            border: Border.all(color: Colors.white,
            width: 5
            )
            ),
            child: CircleAvatar(radius: 100,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbHzWPRMLH9lV3o-iVglZOoFuJ_qAsubofTQ&usqp=CAU'),
            ),
          ),
          Center(
        child: Text('Mukesh Gupta',
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        ),
        ),
          ),
      
          SizedBox(height: 20,),
           Divider(thickness: 2,
       color: Colors.grey,
       
       endIndent: 20,
       indent: 20,
       ) ,
      
          
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => MyProfile(),));
          },
            child: ListTile(
                  leading: Icon(Icons.person),
            title: Text('Proifle',
            style: TextStyle(color: Colors.grey,
            fontWeight: FontWeight.bold,
            )
            ),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
                color: Colors.black,
                ),
            ),
          ),
       Divider(thickness: 2,
       color: Colors.grey,
       
       endIndent: 20,
       indent: 20,
       ) ,
      
       InkWell(
        onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => AdressPage(),));

        },
         child: ListTile(
          leading: Icon(Icons.location_on),
            title: Text('Address',
            style: TextStyle(color: Colors.grey,
            fontWeight: FontWeight.bold,
            )
            ),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
             color: Colors.black,
             ),
            ),
       ),
       Divider(thickness: 2,
       color: Colors.grey,
        endIndent: 20,
       indent: 20,
       )  ,
      
        ListTile(
        leading: Icon(Icons.payment),
          title: Text('Payment Method',
          style: TextStyle(color: Colors.grey,
          fontWeight: FontWeight.bold,
          )
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp,
      color: Colors.black,
      ),
          ),
       Divider(thickness: 2,
       color: Colors.grey,
      endIndent: 20,
       indent: 20,
       )  ,
         ListTile(
        leading: Icon(Icons.help),
          title: Text('Get Help',
          style: TextStyle(color: Colors.grey,
          fontWeight: FontWeight.bold,
          )
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp,
      color: Colors.black,
      ),
          ),
       Divider(thickness: 2,
       color: Colors.grey,
      endIndent: 20,
       indent: 20,
       )  ,
       ListTile(
        leading: Icon(Icons.settings),
          title: Text('Setting',
          style: TextStyle(color: Colors.grey,
          fontWeight: FontWeight.bold,
          )
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp,
      color: Colors.black,
      ),
          ),
       Divider(thickness: 2,
       color: Colors.grey,
       endIndent: 20,
       indent: 20,
       )  ,
       ListTile(
        leading: Icon(Icons.lock),
          title: Text('Logout',
          style: TextStyle(color: Colors.grey,
          fontWeight: FontWeight.bold,
          )
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp,
      color: Colors.black,
      ),
          ),
       Divider(thickness: 2,
       color: Colors.grey,
       endIndent: 20,
       indent: 20,
       )  ,
       Container(height: 120,),
        
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
            icon:InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));              },
              child: Container(
                height: 40,
                child: Image.network(
            'https://www.clker.com/cliparts/A/u/a/P/t/B/yellow-home-md.png',
                  ),
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