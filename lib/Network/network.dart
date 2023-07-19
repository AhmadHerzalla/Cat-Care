import 'dart:convert';

import 'package:http/http.dart' as http;

class Network{
// final String url;

 // Network({required this.url});

 

Future<List<dynamic>> getData(String s, {String add=""}) async{
   http.Response response =
   await http.get (Uri.parse("https://api.thecatapi.com/v1/images/search"));
   if( response.statusCode==200){
    return jsonDecode(response.body); 
   }
   else{
    return Future.error("there somehting error");
   }

}

Future<Map<String,dynamic>> getFactes() async{
   http.Response response =
   await http.get (Uri.parse("https://meowfacts.herokuapp.com/"));
   if( response.statusCode==200){
    return jsonDecode(response.body); 
   }
   else{
    return Future.error("there somehting error");
   }

}






}