import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //sebelum membuat List dituliskan seperti ini
  List<Widget> namaWidgets = [];
  int counter = 1;

  //membuat constructor untuk megisi data List
  // _MyAppState(){
  //   for(int i=0; i <= 100;i++){
  //     namaWidgets.add(Text("Ini Data ke - ${i.toString()}"));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List & ListView"),
        ),
        body: ListView(
          //children tanpa [] karena berisi List
          // children: namaWidgets,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        namaWidgets.add(
                          Text(
                            "Ini Data ke - ${counter.toString()}",
                            style: TextStyle(fontSize: 35),
                          ),
                        );
                        counter++;
                      });
                    },
                    child: Text("Tambah Data")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    namaWidgets.removeLast();
                    counter--;
                  });
                }, child: Text("Hapus Data"))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: namaWidgets,
            )
          ],
        ),
      ),
    );
  }
}
