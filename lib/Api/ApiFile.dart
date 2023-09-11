import 'dart:convert';
import 'package:http/http.dart'as http;

//for registratuion
Map<String, dynamic> ?registerMessage;

Future<Map<String,dynamic>> getRegister(String name,String email,String password )async{
try{
var response = await http.post(
  Uri.parse(
        'https://salon.indiantechart.com/apisecure/register',
        ),
 
  body: {
'name':name,
'email':email,
'password':password,
'type':'1',
  }
  );
var result = json.decode(response.body);
print(response.body);
registerMessage = result;
return registerMessage!;
}catch(error){
  print(error);
  rethrow;
}
}

//for category
List<dynamic> categoryList=[];
Future<List<dynamic>> getcategoryList()async{
try{
var response = await http.get(Uri.parse(
  'https://salon.bestscreentechnology.com/apisecure/get-services-category',
  ),
headers: {
  'Authorization':'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOjk5LCJuYW1lIjoiU2h5YW0gWWFkYXYiLCJlbWFpbCI6ImFzaHV0b3NoODkud2llQGdtYWlsLmNvbSIsIkFQSV9USU1FIjoxNjk0NDM1MTc2fQ.HzC5B9HK8z3o2ddVGI2hVQjENuhiyFVylOs1LRkP0CE'
}
);
var result  = json.decode(response.body);
print(response.body);
categoryList = result['category'];
print(categoryList);
return categoryList;
}catch(error){
  print(error);
  rethrow;
}

}


//for login
Map<String, dynamic> ?loginUser ;

Future<Map<String, dynamic>> getlogin(String name,String email,String password )async{
try{
var response = await http.post(
  Uri.parse(
        'https://salon.indiantechart.com/apisecure/login',
        ),
 
  body: {
'name':name,
'email':email,
'password':password,
'type':'1',
  }
  );
var result = json.decode(response.body);
print(response.body);
loginUser = result;
return loginUser!;
}catch(error){
  print(error);
  rethrow;
}
}

//User-order details
Map<String, dynamic> ?userorderDetails ;

Future<Map<String, dynamic>> getOrderDetails()async{
try{
var response = await http.get(
  Uri.parse(
        'http://salon.indiantechart.com/apisecure/get-order-details?id=2&order_id=100',
        ),
 headers: {
  'Authorization':
'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOjk2LCJuYW1lIjoiU2h5YW0gWWFkYXYiLCJlbWFpbCI6ImFzaGl0b3NoMzQud2llQGdtYWlsLmNvbSIsIkFQSV9USU1FIjoxNjk0MzY4MTI2fQ.pfkE4C8QBau_OC1AWQrkBZNas0Kals_2K1BAltBIoP4'
}    );
var result = json.decode(response.body);
print(response.body);
userorderDetails = result;
return userorderDetails!;
}catch(error){
  print(error);
  rethrow;
}
}
//otp-verify api

List<dynamic>?verifyOtp ;

Future<List<dynamic>> getVerify()async{
try{
var response = await http.post(
  Uri.parse(
        'https://salon.indiantechart.com/apisecure/verify',
        ),
 
  body: {
'email':'tasmiya@gmail.com',
'password':'123456',
  }
  );
var result = json.decode(response.body);
print(response.body);
print(response.statusCode);
verifyOtp = result;
return verifyOtp!;
}catch(error){
  print(error);
  rethrow;
}
}

//for userProfileDetails

Map<String,dynamic>?userdetails;

Future<Map<String,dynamic>> getProfiledetails()async{
try{
  var response = await http.get(
  Uri.parse(
        'http://salon.indiantechart.com/apisecure/get-user-data?id=1',
        ),
 headers: {
  'Authorization':'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOjk5LCJuYW1lIjoiU2h5YW0gWWFkYXYiLCJlbWFpbCI6ImFzaHV0b3NoODkud2llQGdtYWlsLmNvbSIsIkFQSV9USU1FIjoxNjk0NDM1MTc2fQ.HzC5B9HK8z3o2ddVGI2hVQjENuhiyFVylOs1LRkP0CE'
  
}   ,
 );
Map<String, dynamic> data = json.decode(response.body);
print(response.body);
print(response.statusCode);
 Map<String, dynamic> userdetails = data['userDetails'];
print('tasmiya :$userdetails');
return userdetails;
}catch(error){
  print(error);
  rethrow;
}
}








