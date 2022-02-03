import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import './model/models.dart';
class user{
  Future<GoRestEg> getData() async{
    var client=http.Client();
    var temp;

    try {
      var Resonse = await client.get(
          Uri.parse("https://gorest.co.in/public/v2/users"),
        headers: {
      HttpHeaders.authorizationHeader : 'Bearer b89c0cf1cb85301047bbb408891ba7b564a2ea9bd142e12718904ea54839ab00',
      },);
      temp=jsonDecode(Resonse.body);
    print('------------------');
    print(temp);
    }catch(Exception){
      print(Exception);
    }
    return  temp;
  }
}