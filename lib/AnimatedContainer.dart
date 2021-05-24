import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random nilaiRandom = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Animated Container"),
          ),
          body: Center(
            //GestureDetector ini menambahkan event clik dsb
            child: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                color: Color.fromARGB(255, nilaiRandom.nextInt(256),
                    nilaiRandom.nextInt((256)), nilaiRandom.nextInt(256)),
                duration: Duration(seconds: 3),
                width: 50.0 + nilaiRandom.nextInt(101),
                height: 50.0 + nilaiRandom.nextInt(101),
              ),
            ),
          )),
    );
  }
}
