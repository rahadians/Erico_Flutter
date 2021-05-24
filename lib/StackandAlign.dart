//Stack adalah widget  yang bertumpuk
// kalau row dan column sejajar
//RaisedButton sudah diganti dengan yang baru ElevatedButton
//Posisialignment: Alignment.bottomCenter,
//atau Alignment(x,y) range angka -1 sampai 1

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Latihan Stack dan Align"),
            ),
            body: Stack(
              children: [
                Column(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.grey,
                                )),
                            Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.red,
                                ))
                          ],
                        )),
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.red,
                                )),
                            Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.grey,
                                ))
                          ],
                        ))
                  ],
                ),
                ListView(
                  children: [
                    Container(
                        margin: EdgeInsets.all(25),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(25),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(25),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(25),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(25),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(25),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30),
                        )),
                  ],
                ),
                Align(
                  alignment: Alignment(0.90,0.90), //posisi align range angka dari -1 sampai 1
                    child: ElevatedButton(onPressed: (){}, child: Text("My Button"),))
              ],
//lapisan pertama background
            )));
  }
}
