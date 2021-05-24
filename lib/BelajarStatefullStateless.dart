import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful widget Demo"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString(),style: TextStyle(fontSize: 10+number.toDouble()),),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Tambah Bilangan"),
              onPressed: tekanTombol,
            )
          ],
        )),
      ),
    );
  }

  void tekanTombol() {
    //setState untuk merefresh tampilan
    setState(() {
      number=number+1;
    });
  }
}
