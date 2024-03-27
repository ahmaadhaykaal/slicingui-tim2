import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicingui_tim2/screen_page/artikel_page.dart';

class PageBab71 extends StatelessWidget {
  const PageBab71({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hide the back button
        toolbarHeight: 30,
        flexibleSpace: Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '20:12',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.signal_cellular_alt_2_bar,
                      color: Colors.black,
                      size: 20,
                    ),
                    Icon(
                      Icons.wifi,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Transform.rotate(
                      angle: 90 * (3.14 / 180),
                      child: Icon(
                        Icons.battery_5_bar_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: HalfCircleHeader(),
            floating: false,
            pinned: false,
          ),
          SliverToBoxAdapter(
            // child: SizedBox(height: 5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 1300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text(
                      'Konsep Turunan Fungsi\n',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: ('Space Mono'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Coba kamu perhatikan grafik fungsi di bawah ini.',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      '1bab71.png',
                      width: 300,
                      height: 200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Misalkan, grafik di atas merupakan grafik fungsi kontinu f(x). Lalu, terdapat garis lurus yang memotong kurva f(x) di dua titik, yaitu titik A dan B. Nah, karena memotong kurva di dua titik, garis lurus ini bisa kita sebut sebagai garis secan atau garis AB. ',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Kalo kita lihat pada gambar, garis AB pasti punya kemiringan (gradien) tertentu, nih. Kamu masih ingat kan, cara mencari gradien garis lurus? Gradien garis lurus bisa kita cari menggunakan rumus berikut ini:',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      '2bab71.png',
                      width: 150,
                      height: 60,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Nah, karena titik absis (koordinat x) dan ordinatnya (koordinat y) sudah diketahui, bisa kita masukkan deh ke dalam rumus. Sehingga, diperoleh gradien garis AB nya seperti ini.',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      '3bab71.png',
                      width: 150,
                      height: 100,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Sekarang, kalo misalnya titik A dan B ini kita geser agar saling berdekatan satu sama lain, hingga jarak antar titiknya (h) mendekati nol, kira-kira apa yang bakal terjadi?',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      '4bab71.png',
                      width: 280,
                      height: 200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Salah, mereka nggak jadian. :(\n\nGaris AB yang awalnya memotong kurva di dua titik, lama-kelamaan berubah menjadi garis yang tampak menyinggung kurva di satu titik aja. Garis singgung ini kemudian bisa kita sebut sebagai garis tangen. \n\nUntuk gradien garisnya, tetap sama, guys. Tapi, karena nilai h nya mendekati nol, jadi kita gunakan konsep limit.',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      '5bab71.png',
                      width: 150,
                      height: 100,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Dengan syarat, nilai limitnya ada, ya. Nah, gradien garis singgung inilah yang disebut turunan fungsi. ',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // child: Container(
            //   height: 100,
            // ),
          ),
        ],
      ),
    );
  }
}

class HalfCircleHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -MediaQuery.of(context).size.width / 2,
            right: -MediaQuery.of(context).size.width / 2,
            child: ClipOval(
              child: Container(
                height: MediaQuery.of(context).size.width,
                color: Color(0xff5775BA),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageArtikel(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    Text(
                      'Kembali',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Text(
                    'Bab 7 Konsep Turunan\nFungsi Aljabar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Space Mono',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 150; // tinggi maksimal

  @override
  double get minExtent => 130; // tinggi minimal

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
