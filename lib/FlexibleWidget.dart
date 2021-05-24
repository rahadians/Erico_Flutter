//widget flexible adalah untuk memflexiblekan container agar bisa dipakai seluruh ukuran HP
//flex: 1, adalah untuk menentukan ukuran container

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Flexible Layout")),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(

                  children: [
                Flexible(
                    flex: 1,
                    child: Container(
                     margin: EdgeInsets.all(5.0),
                      color: Colors.red,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      color: Colors.yellow,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      color: Colors.purple,
                    )),
              ])),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.amber,
              )),
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
              )),



        ],
      ),
    ));
  }
}
