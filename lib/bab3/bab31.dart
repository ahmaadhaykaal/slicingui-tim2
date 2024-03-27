import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicingui_tim2/screen_page/artikel_page.dart';

class PageBab31 extends StatelessWidget {
  const PageBab31({Key? key}) : super(key: key);

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
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text(
                      'Pengertian Persamaan Linear Satu Variabel',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: ('Space Mono'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Persamaan linear satu variabel adalah kalimat terbuka yang dihubungkan tanda sama dengan (=) dan hanya mempunyai satu variabel berpangkat 1. Bentuk umum persamaan linier satu variabel adalah ax + b = 0. Contohnya :',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('x + 3 = 7\n3a + 4 = 1\nr2 - 6 = 10\n',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    Text('Untuk memahami persamaan linear satu variabel, terdapat elemen-elemen yang perlu kita pahami yaitu tentang pernyataan, kalimat terbuka, variabel, dan konstanta. Kalimat terbuka adalah kalimat yang belum dapat diketahui nilai kebenarannya, variabel (peubah) adalah lambang (simbol) pada kalimat terbuka yang dapat diganti oleh sembarang anggota himpunan yang telah ditentukan. Konstanta adalah lambang yang menyatakan suatu bilangan tertentu, dan himpunan penyelesaian adalah himpunan semua pengganti dari variabel-variabel pada kalimat terbuka yang membuka kalimat tersebut menjadi benar. Contohnya :',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('x + 13 = 17\n7 - y = 12\n4z – 1 = 11\n',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    // SizedBox(height: 15,),
                    Text('Pada bagian 1. (x + 13 = 17) disebut kalimat terbuka, nilai x disebut variabel, sedangkan 13 dan 17 disebut dengan konstanta). Himpunan penyelesaiannya adalah x = 4',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Pada bagian 2. (7 - y = 12) disebut dengan kalimat terbuka, nilai y disebut dengan variabel, sedangkan 7 dan 12 disebut dengan konstanta. Himpunan penyelesaiannya adalah y = -5',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Pada bagian 3. (4z - 1 = 11) disebut dengan kalimat terbuka, nilai z disebut dengan variabel, sedangkan – 1 dan 11 disebut dengan konstanta. Himpunan penyelesaiannya adalah z = 3.',
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
