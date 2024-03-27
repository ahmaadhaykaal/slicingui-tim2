import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicingui_tim2/screen_page/artikel_page.dart';

class PageBab32 extends StatelessWidget {
  const PageBab32({Key? key}) : super(key: key);

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
                height: 560,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text(
                      'Kesetaraan Bentuk PLSV',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: ('Space Mono'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Dua persamaan atau lebih dikatakan setara (Equivalen) jika mempunyai himpunan penyelesaian yang sama dan dinotasikan dengan simbol “ ↔ “. Syarat suatu persamaan dapat dinyatakan ke dalam suatu persamaan yang setara adalah dengan cara : ',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Menambah atau mengurangi kedua ruas dengan bilangan yang sama.\nMengalikan atau membagi kedua ruas dengan bilangan yang sama.',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Contoh soal : ',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('1. Tentukan nilai x – 3 = 5',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Penyelesaian :\nJika x diganti 8 maka nilai 8-3 = 5 {benar} (syarat ke-1) Jadi penyelesaian persamaan x-3 = 5 adalah x = 8',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('2. Tentukan nilai 2x – 6 = 10',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Penyelesaian :\n2x-6 = 10 → 2x = 16 (syarat ke-1)\nNilai x diganti dengan 8 agar kedua persamaan setara \n2(8) = 16 → 16 = 16 .\nJadi penyelesaian persamaan 2x - 6 = 10 adalah x = 8',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('3. Tentukan nilai x + 4 = 12',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Penyelesaian :\nx + 4 = 12 → x = 12-4 { syarat ke-1}\nMaka nilai x = 8\nJadi penyelesaiannya adalah x = 8',
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
                    height: 35,
                  ),
                  Text(
                    'Bab 3\nPersamaan Linear Satu\nVariabel',
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
