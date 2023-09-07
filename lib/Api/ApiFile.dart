import 'dart:convert';
import 'package:http/http.dart'as http;

//for registratuion
Map<String, dynamic> ?registerMessage ;

Future<Map<String, dynamic>> getRegister()async{
try{
var response = await http.post(
  Uri.parse(
        'https://salon.indiantechart.com/apisecure/register',
        ),
 
  body: {
'name':'Shyam Yadav',
'email':'tasmiya2@gmail.com',
'password':'123456',
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
List<dynamic> categoryList = [];
Future<List<dynamic>> getcategoryList()async{
try{
var response = await http.post(Uri.parse(
  'https://salon.bestscreentechnology.com/apisecure/get-services-category',
  ),
headers: {
  'Authorization':'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOjczLCJuYW1lIjoiU2h5YW0gWWFkYXYiLCJlbWFpbCI6InRhc21peWFAZ21haWwuY29tIiwiQVBJX1RJTUUiOjE2OTQwMTAxNDN9.MZPqrgavSOx8-siNCLClWCMhchrIK4_FLtpYctKwKD4',
}
);
var result  = json.decode(response.body);
print(response.body);
categoryList = result['category']['services'];
return categoryList;
}catch(error){
  print(error);
  rethrow;
}

}














