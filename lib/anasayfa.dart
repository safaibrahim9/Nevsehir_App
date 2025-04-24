import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nevsehir/navigation_bar/detay.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Nevşehir'i Tanı",style:
    TextStyle(color:Colors.yellowAccent,fontWeight: FontWeight.bold)),
      centerTitle: true,
      backgroundColor: Colors.black87,),

      body: Stack(
        fit:StackFit.expand,
          children:[ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX:3,sigmaY:3),

            child: Image.asset("resimler/nevsehir.jpg",
            fit: BoxFit.cover,
            ),
           ),




          Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Align(alignment: Alignment.center,

            child: Container(width: 68,
              height: 68,
              child: FloatingActionButton(
                 onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => Detay()),
                );

              print("Dairesel Butona tıklanıldı.");

          },
                child: Icon(FontAwesomeIcons.rocket,
                size: 38,),
                backgroundColor: Colors.yellowAccent,
                
          ),
            ) ,
          ),
            Text("Keşfetmek için!",
              style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold, fontSize: 25),),

          ],

      ),

],

      ),
    );
  }
}
