
import 'package:day36_postapi/user_model.dart';
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

  User user = null;

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
            Text(
                (user != null)
                    ? user.id + " | " + user.email
                    : "Tidak ada data"),
            ElevatedButton(
                onPressed: () {
                  User.connectToAPI("2").then((value) => user=value);
                  setState(() {

                  });
                },
                child: Text("GET")),
          ],
        ),
      ),
    ));
  }
}
