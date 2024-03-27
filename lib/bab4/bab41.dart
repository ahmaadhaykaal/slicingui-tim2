import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicingui_tim2/screen_page/artikel_page.dart';

class PageBab41 extends StatelessWidget {
  const PageBab41({Key? key}) : super(key: key);

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
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text(
                      'Menyusun Persamaan Kuadrat Jika Diketahui Akar-akarnya',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: ('Space Mono'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Misalnya, diketahui akar-akar persamaan kuadrat adalah x1 dan x2. Untuk mendapatkan persamaan kuadratnya, kamu bisa substitusi akar-akar tersebut ke persamaan berikut:\nrumus menyusun persamaan kuadrat',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Salah satu caranya adalah dengan memfaktorkan persamaan kuadrat tersebut. Nah, bentuk persamaan (x - x1)(x - x2) = 0 adalah hasil dari pemfaktoran persamaan kuadrat. Kalau kita lakukan sedikit operasi aljabar, kita kali silang persamaan itu, maka akan didapat suatu persamaan kuadrat.',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Supaya lebih paham, perhatikan contoh soal di bawah ini, yuk!',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Contoh soal 1\n\nTentukan persamaan kuadrat yang akar-akarnya adalah 3 dan -7.',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Penyelesaian:\nDiketahui akar-akar persamaan kuadrat adalah 3 dan -7. Berarti, kamu bisa tulis x1 = 3 dan x2 = -7. Kemudian, kedua akar tersebut bisa kamu substitusikan ke persamaan (x - x1)(x - x2) = 0, sehingga penyelesaiannya menjadi sebagai berikut:',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('(x - 3)(x - (-7)) = 0\n(x - 3)(x + 7) = 0\nx2 + 7x - 3x - 21 = 0\nx2 + 4x - 21 = 0\nJadiii, persamaan kuadrat yang akar-akarnya 3 dan -7 adalah x2 + 4x - 21 = 0.',
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
                    'Bab 4 Persamaan Kuadrat',
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
