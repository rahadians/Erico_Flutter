import 'package:day36_postapi/post_result_model.dart';
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
  PostResult postResult = null;

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

              (postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.created
                  : "Data Tidak Ada",
             ),

            ElevatedButton(
                onPressed: () {
                  PostResult.connectToAPI("Badu", "Dokter")
                      .then((value) => postResult = value);
                  setState(() {});
                },
                child: Text("POST")),
          ],
        ),
      ),
    ));
  }
}
