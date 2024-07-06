import 'package:flutter/material.dart';
import 'detail_bangunan_screen.dart';

class BangunanScreen extends StatelessWidget {
  final List<Map<String, dynamic>> bangunanData = [
    {
      "nama": "Taj Mahal",
      "negara": "India",
      "image": "assets/images/tajmahal.jpeg",
      "gallery": [
        "assets/images/tajmahal1.jpeg",
        "assets/images/tajmahal2.jpeg",
        "assets/images/tajmahal3.jpg",
        "assets/images/tajmahal4.jpeg",
      ],
      "desc":
          "Mausoleum Taj Mahal (bahasa Urdu: تاج محل, Hindi: ताज महल) adalah sebuah mausoleum yang terletak di Agra, India. Dibangun atas keinginan Kaisar Mughal Shāh Jahān, anak Jahangir, sebagai sebuah mausoleum untuk istri Persianya, Arjumand Banu Begum, juga dikenal sebagai Mumtaz-ul-Zamani atau Mumtaz Mahal. Taj Mahal merupakan sebuah adi karya dari arsitektur Mughal."
    },
    {
      "nama": "tower of Pisa",
      "negara": "Italia",
      "image": "assets/images/pisa.jpg",
      "gallery": [
        "assets/images/pisa1.jpg",
        "assets/images/pisa2.jpeg",
        "assets/images/pisa3.jpg",
        "assets/images/pisa4.jpeg",
      ],
      "desc":
          "Menara Miring Pisa (Bahasa Italia: Torre pendente di Pisa atau disingkat Torre di Pisa), atau lebih dikenal dengan Menara Pisa, adalah sebuah campanile atau menara lonceng gereja katedral di kota Pisa, Italia."
    },
    {
      "nama": "tower of Eiffel",
      "negara": "France",
      "image": "assets/images/eiffel.jpeg",
      "gallery": [
        "assets/images/eiffel1.jpg",
        "assets/images/eiffel2.webp",
        "assets/images/eiffel3.jpeg",
        "assets/images/eiffel4.jpeg",
      ],
      "desc":
          "Menara Eiffel sebelumnya bernama Menara Paris (bahasa Prancis: Tour Eiffel, /tuʀ ɛfɛl/) merupakan sebuah menara besi yang dibangun di Champ de Mars di tepi Sungai Seine, Paris. Menara ini telah menjadi ikon utama negara Prancis dan salah satu struktur paling terkenal di dunia."
    },
    {
      "nama": "Burj Khalifa",
      "negara": "Uni Emirat Arab",
      "image": "assets/images/burj.jpg",
      "gallery": [
        "assets/images/burj1.jpeg",
        "assets/images/burj2.jpg",
        "assets/images/burj3.jpg",
        "assets/images/burj4.jpeg",
      ],
      "desc":
          "Burj Khalifa (bahasa Arab برج خليفة yang berarti 'Menara Khalifa'), sebelumnya bernama Burj Dubai, adalah sebuah pencakar langit di Dubai, Uni Emirat Arab yang diresmikan pembukaannya pada 4 Januari 2010. Ketinggian pencakar langit ini adalah 828 meter (2.717 kaki)."
    },
    {
      "nama": "Ka'bah",
      "negara": "Arab Saudi",
      "image": "assets/images/kabah.jpg",
      "gallery": [
        "assets/images/kabah1.jpg",
        "assets/images/kabah2.jpeg",
        "assets/images/kabah3.webp",
        "assets/images/kabah4.webp",
      ],
      "desc":
          "Ka'bah (bahasa Arab: ٱلْكَعْبَة, translit. al-Kaʿbah, har. 'kubus', pelafalan dalam bahasa Arab: [kaʕ.bah]), lengkapnya al-Kaʿbah al-Musyarrafah (bahasa Arab: ٱلْكَعْبَة ٱلْمُشَرَّفَة, translit. al-Kaʿbah al-Musyarrafah, har. 'Ka'bah yang Mulia'), adalah sebuah bangunan di tengah-tengah masjid paling suci dalam agama Islam, Masjidilharam, di Makkah, Arab Saudi.[1][2] Tempat ini adalah tempat yang paling disucikan dalam agama Islam.[3] Ka'bah juga disebut sebagai Baitullah atau Bait Allah (bahasa Arab: بَيْت ٱللَّٰه, har. 'Rumah Allah'), serta merupakan kiblat (bahasa Arab: قِبْلَة, arah hadap) untuk orang Islam di seluruh dunia saat mendirikan Salat."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangunan Terkenal di Dunia'),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/white.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: bangunanData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailBangunanScreen(
                        nama: bangunanData[index]["nama"],
                        negara: bangunanData[index]["negara"],
                        image: bangunanData[index]["image"],
                        gallery: bangunanData[index]["gallery"],
                        desc: bangunanData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${bangunanData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${bangunanData[index]["nama"]} - ${bangunanData[index]["negara"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
