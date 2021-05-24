import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Text";

  void tombolDitekan(){
    setState(() {
      message="Tombol sudah ditekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymouse Methode"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              //ini penulisan methode dikenali, dipakai berkali-kali
              ElevatedButton(onPressed: tombolDitekan, child: Text("tekan")),
              //ini adalah anonymous methode hanya sekali dipakai bisa ditulis langsung
              ElevatedButton(onPressed: (){setState(() {
                message="Tombol sudah ditekan anonymouse";
              });}, child: Text("Anonymose"))
            ],
          ),
        ),
      ),
    );
  }
}
