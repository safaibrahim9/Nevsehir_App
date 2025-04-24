

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nevsehir/navigation_bar/gezilecek_yerler/mekan.dart';

import 'package:nevsehir/navigation_bar/temel.dart';
import 'package:nevsehir/navigation_bar/yemek.dart';

class Detay extends StatefulWidget {
  const Detay({super.key});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  int secili_indeks=0;

  final List <Widget>sayfalar =[
    Temel(),
    Mekan(),
    Yemek(),
  ];
  void onItemTapped(int index) {
    setState(() {
      secili_indeks = index;

    });


}



@override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nevşehir'i Tanı",
        style: TextStyle(color: Colors.yellow),

      ),
      centerTitle: true,
      backgroundColor: Colors.black87,

      ),
      body: sayfalar[secili_indeks],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: secili_indeks,
            onTap: onItemTapped,
            items:[BottomNavigationBarItem(
                icon:Icon(FontAwesomeIcons.star),
                label:'Genel Bilgiler',),


              BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.placeOfWorship),
              label:"Gezilecek Yerler"),

              BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bowlFood),
              label: "Yemekler"),
      ],
          backgroundColor: Colors.yellowAccent,
      ),



    );
  }
}
