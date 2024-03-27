import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicingui_tim2/screen_page/mulai_belajar_page.dart';

class PageDetailNotif extends StatelessWidget {
  const PageDetailNotif({Key? key}) : super(key: key);

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
          // SliverToBoxAdapter(
          //   child: Container(
          //     height: 1000, // Adjust the height as needed
          //     color: Colors.white, // Example content
          //     child: Center(child: Text("Sliver Content")),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Container(
                height: 1000,
                width: double.infinity,
                child: SafeArea(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: Row(
                          children: [
                            Image.asset(
                              'asd.png',
                              width: 50,
                              height: 70,
                            ),
                            Text(
                              'Laporan Progres Belajar Mingguanmu',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: ('Alata'),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 75,
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.all(5),
                              child: Image.asset(
                                'eos.png',
                                width: 20,
                                height: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  'StudyTeach',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: ('Alata'),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Kepada saya',
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontFamily: ('Alata'),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Image.asset(
                                      'down.png',
                                      width: 20,
                                      height: 5,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: 250,
                            ),
                            Positioned(
                              right: 0,
                              child: Image.asset(
                                'back2.png',
                                width: 140,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                            ),
                            Image.asset(
                              'StudyTeach.png',
                              width: 200,
                              height: 60,
                            ),
                            Image.asset(
                              'eos.png',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'HI! Keira Herlambang\nprogres belajar mingguanmu\nsudah bagus',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Progres belajarmu sudah bagus, lanjutkan dan tingkatkan semangat\nbelajar kamu!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //button
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              width: 200,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Lanjutkan Belajar',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 40,
                            ),
                            Divider(
                              color: Color(0xff888888),
                              thickness: 2,
                              indent: 45,
                              endIndent: 45,
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Image.asset(
                                    'oaskd.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Latihan mengasah\nketerampilanmu !',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Belajar adalah kebiasaan sehat.\nBagaimana kalau berlatih di StudyTeach aja ?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff9A9A9A),
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 25,
                            ),
                            Center(
                              //button
                              child: Container(
                                width: 200,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Color(0xff0070D7),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Terus Berlatih',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 40,
                            ),
                            Divider(
                              color: Color(0xff888888),
                              thickness: 2,
                              indent: 45,
                              endIndent: 45,
                            ),

                            // SizedBox(
                            //   height: 10,
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '13940 Penggilingan Cakung Jakarta Timur',
                                      style: TextStyle(
                                        color: Color(0xff9A9A9A),
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Ayo berlangganan secara gratis !!!',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Image.asset(
                                  'ig.png',
                                  width: 30,
                                  height: 50,
                                ),
                                Image.asset(
                                  'x.png',
                                  width: 30,
                                  height: 50,
                                ),
                                Image.asset(
                                  'yt.png',
                                  width: 30,
                                  height: 50,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 870,
                          left: 40,
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 27,
                                decoration: BoxDecoration(
                                  // color: Colors.blue.withOpacity(0.5),
                                  color: Color(0xff89B8FF),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        'back2.png',
                                        width: 15,
                                        height: 50,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Balas',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 90,
                                height: 27,
                                decoration: BoxDecoration(
                                  // color: Colors.red.withOpacity(0.5),
                                  color: Color(0xffFF7777),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Teruskan',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
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
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageBottomBar()),
                        (route) => false);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    SizedBox(height: 25),
                    Text(
                      'Notifikasi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: ('Alata'),
                      ),
                    ),
                  ],
                ),
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
