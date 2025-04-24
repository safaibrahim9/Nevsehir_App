import 'package:flutter/material.dart';
import 'package:nevsehir/navigation_bar/gezilecek_yerler/class.dart';

class DetaySayfasi extends StatefulWidget {
  final GezilecekYer konum;
  const DetaySayfasi({super.key,required this.konum});

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text(widget.konum.isim,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
      ),
        backgroundColor: Colors.yellowAccent,

      ),
      body: Column(
        children: [
          Image.network(widget.konum.resimUrl),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(widget.konum.aciklama,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          )




        ],
      ),

    );
  }
}
