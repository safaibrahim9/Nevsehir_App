import 'package:flutter/material.dart';

class Yemek extends StatefulWidget {
  const Yemek({super.key});

  @override
  State<Yemek> createState() => _YemekState();
}

class _YemekState extends State<Yemek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(title: Text("Favori Yemekler", style:TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellowAccent,),
      body: ListView(
        children: [
          ListTile(
            leading:Image.network("https://gastromanya.com/wp-content/uploads/2016/10/Nevsehir-tavasi.jpg"),
            title:Text("Nevşehir Tava",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
            subtitle: Text("Odun ateşinde pişirilen lezzetlerden birisidir. Bölgedeki restoranların büyük kısmında bulabileceğiniz bir yemektir.",style: TextStyle(),),

            tileColor: Colors.lightGreen,
            selectedTileColor: Colors.red,


          ),

          Divider(
            color: Colors.black, // Çizgi rengi
            thickness: 2, // Çizgi kalınlığı
            indent: 0, // Çizginin sol girintisi
            endIndent: 0, // Çizginin sağ girintisi
          ),
          ListTile(
            leading:Image.network("https://i.lezzet.com.tr/images-xxlarge-recipe/kuzu_etli_ayva_dolmasi-b63a2c53-651e-4c9d-ba6b-e04c885ec513.jpg"),
            title:Text("Ayva Dolması",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
            subtitle: Text("Nevşehir’in popüler tatlılarından birisidir. Osmanlı mutfağından gelen bu tatlı yemeklerin ardından pek çok restoranda ikram edilir."),

            tileColor: Colors.lightGreen,
            selectedTileColor: Colors.red,


          ),

          Divider(
          color: Colors.black, // Çizgi rengi
          thickness: 2, // Çizgi kalınlığı
          indent: 0, // Çizginin sol girintisi
          endIndent: 0, // Çizginin sağ girintisi
          ),

            ListTile(
            leading:Image.network("https://image.hurimg.com/i/hurriyet/75/750x422/5e58c122c9de3d09c015a901.jpg"),
            title:Text("Zerde Tatlısı",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
            subtitle: Text("Geçmişi Osmanlı mutfağına dayanır. İçerisinde pirincin yanı sıra nişasta, safran, kuş üzümü, dolmalık fıstık gibi malzemeler bulunur."),

            tileColor: Colors.lightGreen,
            selectedTileColor: Colors.red,


          ),
          Divider(
            color: Colors.black, // Çizgi rengi
            thickness: 2, // Çizgi kalınlığı
            indent: 0, // Çizginin sol girintisi
            endIndent: 0, // Çizginin sağ girintisi
          ),
          ListTile(
            leading:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5-Mmd68Ijlz5CMA4AlzJOgcnWAX7tj33xKg&s"),
            title:Text("Nohutlu Yahni",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
            subtitle: Text("Tandır ateşinde pişiriliyor olması nohutlu yahninin en büyük özelliğidir.  Geleneksel tarifte kuzu eti ile yapılır. Ancak dana eti ile yapanlar da olabilir."),

            tileColor: Colors.lightGreen,
            selectedTileColor: Colors.red,


          ),
          Divider(
            color: Colors.black, // Çizgi rengi
            thickness: 2, // Çizgi kalınlığı
            indent: 0, // Çizginin sol girintisi
            endIndent: 0, // Çizginin sağ girintisi
          ),
          ListTile(
            leading:Image.network("https://iasbh.tmgrup.com.tr/5fd1f4/650/344/0/99/800/520?u=https://isbh.tmgrup.com.tr/sbh/2018/11/21/testi-kebabi-nasil-yapilir-testi-kebabi-tarifi-1542810836314.jpg"),
            title:Text("Testi Kebabı",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
            subtitle: Text("Bölgede üretilen çömlekler kullanılarak yapılan testi kebabı dana ve kuzu eti kullanılarak yapılır. İçerisinde çeşitli sebzeler de yer alır."),

            tileColor: Colors.lightGreen,
            selectedTileColor: Colors.red,


          ),



        ]
            ,
      ),



    );
  }
}
