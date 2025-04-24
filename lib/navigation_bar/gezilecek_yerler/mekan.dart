import 'package:flutter/material.dart';
import 'package:nevsehir/navigation_bar/gezilecek_yerler/class.dart';
import 'package:nevsehir/navigation_bar/gezilecek_yerler/mekan_detay.dart';


class Mekan extends StatefulWidget {
   Mekan({super.key});


  @override
  State<Mekan> createState() => _MekanState();


}

class _MekanState extends State<Mekan> {
  List<GezilecekYer> yerler = [

    GezilecekYer(
    isim: 'Üç Güzeller',
    aciklama: 'Üç Güzeller, Kapadokya’nın simgelerinden biri olan, peri bacalarından oluşan doğal bir oluşumdur. Nevşehir’in Ürgüp ilçesinde yer alan bu üç peri bacası, halk arasında "anne, baba ve çocuk" olarak adlandırılır. Efsanelere konu olan Üç Güzeller, özellikle gün batımında etkileyici manzaralar sunarak fotoğrafçılar ve ziyaretçiler için popüler bir durak haline gelmiştir.',
    resimUrl: 'https://www.kapadokyadayim.com/wp-content/uploads/2017/01/%C3%BCc-g%C3%BCzeller-fotograf-1.jpg',
    ),
    GezilecekYer(

      isim: 'Uçhisar Kalesi',
      aciklama: 'Volkanik tüf kayaların oyulmasıyla şekillenen bu yapı, geçmişte savunma ve gözetleme amacıyla kullanılmıştır.Uçhisar Kalesi, Nevşehir’in Uçhisar beldesinde yer alan ve Kapadokya’nın en yüksek noktası olan doğal bir kaledir. Kaleye çıktığınızda Kapadokya’nın benzersiz manzarasını panoramik olarak izleyebilirsiniz. ',
      resimUrl: "https://cdnuploads.aa.com.tr/uploads/Contents/2024/06/05/thumbs_b_c_d81ca8f286aa1f8542240e7a52ffe8e9.jpg?v=144713"
    ),
    GezilecekYer(
      isim: 'Kaymaklı Yer Altı Şehri',
      aciklama: 'Kaymaklı Yeraltı Şehri, Nevşehir il sınırlarında bulunan ve Kapadokya bölgesinin en büyük yeraltı şehirlerinden biridir. Tarihi MÖ 3000lere kadar uzandığı düşünülen bu şehir, yer altına inşa edilmiş odalar, depolar, kiliseler, havalandırma şaftları ve su yolları ile dikkat çeker. Kaymaklı Yeraltı Şehri, bölgedeki diğer yeraltı şehirleri gibi, antik dönemlerde insanlar tarafından güvenlik amacıyla, düşmanlardan korunmak için kullanılmıştır. 8 katlı yapısıyla, ziyaretçilere yeraltındaki yaşamı keşfetme imkânı sunar.',
      resimUrl: 'https://muze.gov.tr/s3/SectionPicture/SP_7343460e-57c3-4a36-a86a-0f7a529eb9d3.jpg',
    ),
    GezilecekYer(
      isim: 'Göreme Açık Hava Müzesi',
      aciklama: 'Göreme Açık Hava Müzesi, Kapadokya’nın en önemli tarihi ve turistik alanlarından biridir. UNESCO Dünya Mirası Listesinde yer alan bu bölge, kayalara oyulmuş kiliseleri, manastırları ve freskleriyle ünlüdür. 10. ve 12. yüzyıllar arasında Bizans döneminde önemli bir dini merkez olan Göreme Açık Hava Müzesi, Hristiyan sanatının eşsiz örneklerini barındırmaktadır. İçerisinde Karanlık Kilise, Elmalı Kilise ve Tokalı Kilise gibi yapılar bulunur.',
      resimUrl: 'https://fairystonetravel.com/wp-content/uploads/2024/02/RED001.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gezilecek Yerler",
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellowAccent,),
      body:PageView.builder(
        itemCount: yerler.length,
          controller: PageController(viewportFraction: 0.80),
          itemBuilder: (context,index){
          var yer=yerler[index];
          return Padding(
        padding:const EdgeInsets.symmetric(horizontal:8.0),
            child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 6,
        child: ClipRRect(borderRadius: BorderRadius.circular(20),
          child:Stack(
            children: [
              Image.network(
                yer.resimUrl,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
          Container(padding: EdgeInsets.all(16),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black.withOpacity(0.1), Colors.black.withOpacity(0.7)],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  yer.isim,
                  style:TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
              SizedBox(height: 5),
                Text(yer.aciklama,
                style: TextStyle(fontSize: 16,color: Colors.white70),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black87
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>DetaySayfasi(konum: yer,)),
                      );
                },

                    child:Text("Detayları gör"),




                ),
              ],
            ),


                )
              ],
            ),


            ),








          ),







          );
        }
      ),
    );
  }
  }