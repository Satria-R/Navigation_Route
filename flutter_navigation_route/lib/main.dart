import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanPertama(),
    routes: <string, WidgetBuilder>{
      'HalamanPertama': (BuildContext context) => new HalamanPertama(),
      'HalamanKedua': (BuildContext context) => new HalamanKedua(),
    }
  ));
}

//Memuat Halaman Crad
class HalamanPertama extends StatelessWidget {
  @override
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("Portal Menu Akses Route"),
       backgroundColor: Colors.red,
     ),
     body: Center(
       child: new IconButton(
         icon: new Icon(
           Icons.headset,
           size: 50.0,
         ),
         onPressed: () {
           Navigator.pushNamed(context, '/HalamanKedua');
         },
       ),
     ),
   );
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SPEAKER"),
      ),
      body: new Center(
        child: new IconButton(
          icon: New Icon(
            Icon.speaker,
            size: 50.0,
            color: Color.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalamanPertama')
          },
        ) 
        ,),
      )
  }
}