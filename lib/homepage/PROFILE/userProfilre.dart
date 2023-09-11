import 'package:flutter/material.dart';
import 'package:flutter_salon_app/Api/ApiFile.dart';

class UserProfilepage extends StatefulWidget {
  const UserProfilepage({super.key});

  @override
  State<UserProfilepage> createState() => _UserProfilepageState();
}

class _UserProfilepageState extends State<UserProfilepage> {
 @override
 void initState(){
  super.initState();
  getProfiledetails();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child:   Column(
  
    children: [
  
  SizedBox(height: 40,),
  
  
  
  Row(children: [
  
  SizedBox(width: 20,)
  
  ,  IconButton(onPressed: (){
  
  Navigator.pop(context);
  
    },
  
     icon: Icon(Icons.arrow_back,
  
     color: Colors.black,
  
    // size: 20,
  
     ),
  
     ),
  
     SizedBox(width: 80,),
  
     Text('My Profile',
  
     
  
     style: TextStyle(color: Colors.black,
  
     fontSize: 25,
  
     fontWeight: FontWeight.bold,
  
     ),
  
     )
  
  ],),
  
  SizedBox(height: 20,),
  
  Column(
  
    children: [
  
          Row(children: [
  
      
  
       SizedBox(width: 20,),
  
      
  
      
  
      
  
       CircleAvatar(
  
      
  
        radius: 60,
  
      
  
        backgroundImage: NetworkImage(
  
      
  
        'https://i.pinimg.com/564x/2f/fa/3c/2ffa3c25fdc0c1582844e4d29873496c.jpg',
  
      
  
        
  
      
  
        ),) ,
  
      
  
      
  
      
  
       SizedBox(width: 20,),
  
      
  
      
  
      
  
    RichText(text: TextSpan(children: [
  
      TextSpan(text: 'Tasmiya\n',
  
      style: TextStyle(fontSize: 20,
  
     color: Colors.black,
  
     fontWeight: FontWeight.bold,
  
      ),
  
      ),
  
     TextSpan(text: 'tasmiya@gmail.com',
  
      style: TextStyle(fontSize: 15,
  
     color: Colors.black,
  
     fontWeight: FontWeight.normal,
  
      ),
  
      ),
  
  
  
  
  
    ]))
  
      
  
      ],),
  
   
  
   Padding(
  
     padding: const EdgeInsets.only(left: 80),
  
     child: InkWell(
  
      onTap: (){
  
     getProfiledetails();
  
      },
  
       child: Container(
  
        height: 40,
  
      width: 130,
  
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
  
       color: Colors.red.shade300,
  
      
  
       ),
  
       child: Align(
  
         child: Text('Edit Profile',
  
         style: TextStyle(color: Colors.white,
  
         fontWeight: FontWeight.bold,
  
         fontSize: 18,
  
         ),
  
         ),
  
       ),
  
       ),
  
     ),
  
   )
  
    ],
  
  ),
  
  SizedBox(height: 20,),
  
  // Container(
  
  //   height: 300,
  
  //   width: 360,
  
  //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
  
  //   // color: Colors.grey.shade400,
  
  //   ),
  
  //   child: Column(children: [
  
  // ListTile(leading: Icon(Icons.public,
  
  // color: Colors.grey,
  
  // ),
  
  // title: Text('Personal details',
  
  // style: TextStyle(color: Colors.black,
  
  // fontSize: 15,
  
  // ),
  
  // ),
  
  // trailing: IconButton(onPressed: (){
  
  
  
  // },
  
  // icon: Icon(Icons.arrow_forward_ios,
  
  // color: Colors.black,
  
  // size: 18,
  
  // ),
  
  // )),
  
  
  
  // ListTile(leading: Icon(Icons.security,
  
  // color: Colors.grey,
  
  // ),
  
  // title: Text('Password & security',
  
  // style: TextStyle(color: Colors.black,
  
  // fontSize: 15,
  
  // ),
  
  // ),
  
  // trailing: IconButton(onPressed: (){
  
  
  
  // },
  
  // icon: Icon(Icons.arrow_forward_ios,
  
  // color: Colors.black,
  
  // size: 18,
  
  // ),
  
  // )),
  
  
  
  // ]),)
  
  
  
  //Data from api for userDetails
  Padding(
    padding: const EdgeInsets.only(right: 170),
    child: Text('Personal Details',
    style: TextStyle(fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
  ),
  FutureBuilder(
  
    future: getProfiledetails(), 
  
  builder: (context, snapshot) {
  
   if(snapshot.connectionState == ConnectionState.waiting){
  
    return Text('Loading');
  
   }else if(snapshot.hasError){
  
    return Text('error in data');
  
   }else if(snapshot.hasData){
  
   final userdetails = snapshot.data;
  
   return SingleChildScrollView(
    physics: AlwaysScrollableScrollPhysics(),
     child: Column(
      children: [
         
       SizedBox(height: 30,),
              Opacity(
      
          opacity: 0.4,
      
           child: Container(
      
           height: 50,
      
           width: 330,
      
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      
            color: Colors.grey,
      
         
      
            ),
      
            child: Row(
      
              children: [
      
            SizedBox(width: 10,),
      Icon(Icons.person     
),
            Text('Customer name-',
      
            style: TextStyle(color: Colors.black,
      
            fontWeight: FontWeight.bold,
      
           
      
            ),
      
            ),
      
               SizedBox(width: 10,),
      
                Text('${userdetails?['customerName']}',
      
      style: TextStyle(color: Colors.white,
      fontWeight: FontWeight.bold,
      ),
      
                
      
                ),
      
              ],
      
            ),
      
            ),
      
         ),
      
      
      SizedBox(height: 30,),
              
      
         Opacity(
      
          opacity: 0.4,
      
           child: Container(
      
           height: 50,
      
           width: 330,
      
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      
            color: Colors.grey,
      
         
      
            ),
      
            child: Row(
      
              children: [
      
            SizedBox(width: 10,),
      Icon(Icons.email     
),
            Text('Email-',
      
            style: TextStyle(color: Colors.black,
      
            fontWeight: FontWeight.bold,
      
           
      
            ),
      
            ),
      
               SizedBox(width: 10,),
      
                Text('${userdetails?['email']}',
      
      style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,

      ),
      
                
      
                ),
      
              ],
      
            ),
      
            ),
      
         ),
      
      SizedBox(height: 30,),
              Opacity(
      
          opacity: 0.4,
      
           child: Container(
      
           height: 50,
      
           width: 330,
      
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      
            color: Colors.grey,
      
         
      
            ),
      
            child: Row(
      
              children: [
      
            SizedBox(width: 10,),
      Icon(Icons.key     
),
            Text('Passowrd-',
      
            style: TextStyle(color: Colors.black,
      
            fontWeight: FontWeight.bold,
      
           
      
            ),
      
            ),
      
               SizedBox(width: 10,),
      
                Text('${userdetails?['password']}',
      
      style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,

      ),
      
                
      
                ),
      
              ],
      
            ),
      
            ),
      
         ),
      
             SizedBox(height: 30,),
              Opacity(
      
          opacity: 0.4,
      
           child: Container(
      
           height: 50,
      
           width: 330,
      
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      
            color: Colors.grey,
      
         
      
            ),
      
            child: Row(
      
              children: [
      
            SizedBox(width: 10,),
            Icon(Icons.location_on     
),

            Text('Addresss-',
      
            style: TextStyle(color: Colors.black,
      
            fontWeight: FontWeight.bold,
      
           
      
            ),
      
            ),
      
               SizedBox(width: 10,),
      
                Text('${userdetails?['address']}',
      
      style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,

      ),
      
                
      
                ),
      
              ],
      
            ),
      
            ),
      
         ),
      
           SizedBox(height: 30,),
              Opacity(
      
          opacity: 0.4,
      
           child: Container(
      
           height: 50,
      
           width: 330,
      
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      
            color: Colors.grey,
      
         
      
            ),
      
            child: Row(
      
              children: [
      
            SizedBox(width: 10,),
            Icon(Icons.call),

            Text('Mobile number',
      
            style: TextStyle(color: Colors.black,
      
            fontWeight: FontWeight.bold,
      
           
      
            ),
      
            ),
      
               SizedBox(width: 10,),
      
                Text('+91${userdetails?['number']}',
      
      style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,

      ),
      
                
      
                ),
      
              ],
      
            ),
      
            ),
      
         ),
         SizedBox(height: 30,),
              Opacity(
      
          opacity: 0.4,
      
           child: Container(
      
           height: 50,
      
           width: 330,
      
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      
            color: Colors.grey,
      
         
      
            ),
      
            child: Row(
      
              children: [
      
            SizedBox(width: 10,),
      Icon(Icons.calendar_month),
            Text('Date joined-',
      
            style: TextStyle(color: Colors.black,
      
            fontWeight: FontWeight.bold,
      
           
      
            ),
      
            ),
      
               SizedBox(width: 10,),
      
                Text('${userdetails?['createdDate']}',
      
      style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,

      ),
      
                
      
                ),
      
              ],
      
            ),
      
            ),
      
         )
            
     
             
     
            
            
              ],
           
     ),
   );
  
  }else{
  
    return Text('sorruy');
  
  }
  
  }
  
  ),
  
    
  
  
  
  
  
  
  
      ]),
),

    );
  }
}