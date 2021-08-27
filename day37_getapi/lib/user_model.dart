import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class User {
  String id;
  String email;

  User({this.id, this.email});

  factory User.createUser(Map<String, dynamic> object) {
    return User(id: object['id'].toString(),
        email: object['email']);
  }

  static Future<User> connectToAPI(String id) async
  {

    final apiURL = Uri.parse("https://reqres.in/api/users/"+ id);

    var apiResult = await http.get(apiURL);
    if (apiResult.statusCode==200){
      print('konek ok');
    }else{
      print('konek gagal');
    }
    var jsonObject = json.decode(apiResult.body);
    var userData =(jsonObject as Map<String,dynamic>)['data'];
    return User.createUser(userData);

  }

}
