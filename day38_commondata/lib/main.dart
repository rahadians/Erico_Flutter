import 'package:day38_commondata/user_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("API Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(output),
            ElevatedButton(
                onPressed: () {
                  output="";
                  User.getUsers("4").then((users) {
                    for (int i = 1; i < users.length; i++) {
                      output = output + " [ " + users[i].email + " ] ";
                    }
                  });
                  setState(() {});
                },
                child: Text("GET")),
          ],
        ),
      ),
    ));
  }
}
