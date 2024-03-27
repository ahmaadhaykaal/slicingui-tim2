import 'package:flutter/material.dart';
import 'package:slicingui_tim2/screen_page/mulai_belajar_page.dart';
import 'package:slicingui_tim2/screen_page/notif_detail_page.dart';
import 'package:slicingui_tim2/screen_page/robot_soal_page.dart';

class PageSoalTerdeteksi extends StatelessWidget {
  const PageSoalTerdeteksi({super.key});

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
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                
                children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 700,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0,5)
                            ),]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Soal Terdeteksi :\nNilai dari sin 75° + cos  75° adalah ....\na. 1/4 √6\nb. 1/2  √2\nc. 1/2 √3\nd. 1\ne. 1/2 √6',)
                              ],
                            ),
                          ),
                        ),
                        Text('\nPembahasan :'),
                        Text('Menggunakan sifat trigonometri: \nsin 75 + cos 75'),
                        Text('Melalui pengubahan fungsi:\n= sin 75 + sin(90 - 75)\n= sin 75 + sin 15'),
                        Text('Melalui rumus penjumlahan antar fungsi:\nDengan sin A + sin B = 2. sin (A+B)/2. cos (A-B)/2\n'),
                        Text('= 2. sin (75+15)/2. cos (75-15)/2\n= 2. sin 90/2. cos 60/2\n'),
                        Text('= 2. sin 45. cos 30\n= 2. 1/2 √2. 1/2 √3\n= √2. 1/2 √3\n= 1/2 √6'),
                      ],
                    ),
                  ),
                ),
                ]
              ),
              ),
          )
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
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageRobotSoal()),
                        (route) => false);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                SizedBox(width: 15),
                
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 130; // Max extent of the header

  @override
  double get minExtent => 130; // Min extent of the header

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
