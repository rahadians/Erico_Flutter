import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id;
  String email;

  User({this.id, this.email});

  factory User.createUser(Map<String, dynamic> object) {
    return User(id: object['id'].toString(), email: object['email']);
  }

  static Future<List<User>> getUsers(String page) async {
    final apiURL = Uri.parse("https://reqres.in/api/users?page/" + page);

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);

    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<User> users = [];
    for (int i = 0; i < listUser.length; i++)
      users.add(User.createUser(listUser[i]));

    return users;
  }
}
