//  ini cara ambil image dari web Image(image: NetworkImage("https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png"),),
// ini agar gambar bisa menyesuaikan container fit: BoxFit.fill
//ini mengulang gambar,Repet:ImageRepeat.repeat
//sebaiknya pakai network image saja

//

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Image"),),
        body: Center(
          child: Container(
            color: Colors.black12,
            width: 150,
              height: 200,
            padding: EdgeInsets.all(3),
             child: Image(image: NetworkImage("https://th.bing.com/th/id/R572d2a60d95e0c292676f090a99795d8?rik=wf5uXbaqEg%2ffrA&riu=http%3a%2f%2ffindicons.com%2ffiles%2ficons%2f1619%2fironman%2f128%2fm_iii.png&ehk=MncUSaJeVcin3Lue9Z2GUl%2bj6uAe9gl8lIbUBxjJKk0%3d&risl=&pid=ImgRaw"),fit: BoxFit.fill,)
            // child: new Image(image: AssetImage("images/kepalairon.png"),fit: BoxFit.fill,),
          ),
        ),
      ) ,

    );
  }
}
