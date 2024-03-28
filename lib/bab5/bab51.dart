import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicingui_tim2/screen_page/artikel_page.dart';

class PageBab51 extends StatelessWidget {
  const PageBab51({Key? key}) : super(key: key);

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
                      'Pengertian',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: ('Space Mono'),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Selain ada PLSV, ada juga yang namanya Persamaan Linear Dua Variabel (PLDV), nih.\nLalu, apa sih bedanya PLSV dengan PLDV? Bedanya, kalau PLSV, persamaannya hanya memiliki satu variabel saja, sedangkan PLDV, persamaannya memiliki dua variabel. Nah, variabel-variabel ini hanya memiliki pangkat atau derajat bernilai satu.',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 10,),
                     Text(
                      'Bagaimana, sudah paham kan letak perbedaannya? Apabila terdapat dua atau lebih PLDV yang memiliki hubungan satu sama lain dan memiliki satu buah penyelesaian, maka itulah yang dinamakan dengan SPLDV. Bentuk umum SPLDV adalah sebagai berikut:',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: ('Space Mono'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Image.asset('assets/bab51.png'),
                    SizedBox(height: 20,),
                    Text(
                      'SPLDV ini biasanya digunakan untuk menyelesaikan masalah sehari-hari yang membutuhkan penggunaan Matematika, seperti menentukan harga suatu barang, mencari keuntungan penjualan, sampai menentukan ukuran suatu benda seperti masalah Kumamon di atas, lho.',
                      style: TextStyle(
                        fontSize: 13,
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
                    height: 60,
                  ),
                  Text(
                    'Bab 5 SPLDV',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
