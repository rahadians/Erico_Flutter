import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red,
          //margin sebagian
          // margin: EdgeInsets.fromLTRB(5, 10, 15, 20),
          // padding semua sisi
          //  padding: EdgeInsets.all(10),
          // padding satu sisi
          padding: EdgeInsets.only(bottom: 10, top: 10),
          child: Container(
            margin: EdgeInsets.all(5),
            // color: Colors.blue,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
                gradient:
                    LinearGradient(begin:Alignment.topLeft,end:Alignment.bottomRight, colors:<Color>[Colors.amber, Colors.blue])),
          ),
        ),
      ),
    );
  }
}
