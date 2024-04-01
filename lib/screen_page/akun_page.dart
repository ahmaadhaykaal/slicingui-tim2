import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicingui_tim2/screen_page/artikel_page.dart';
import 'package:slicingui_tim2/screen_page/mulai_belajar_page.dart';

class PageAkun extends StatelessWidget {
  const PageAkun({Key? key}) : super(key: key);

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
                height: 700,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/akunpict.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Keira Herlambang',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'ilpengding@gmail.com',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Port Slab',
                                      ),
                                    ),
                                    Text(
                                      '088123146555',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                child: Text(
                                  "Ubah Profile",
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  // textStyle: TextStyle(color: Colors.white),
                                  // backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Card(
                              elevation: 1,
                              color: Color(0xFFFEFBFB),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Data Pribadi',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: 10,
                                    // ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Nama',
                                        labelStyle: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Tempat Tanggal Lahir',
                                        labelStyle: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Jenis Kelamin',
                                        labelStyle: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Card(
                              elevation: 1,
                              color: Color(0xFFFEFBFB),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Detail Alamat',
                                        labelStyle: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Sekolah Asal',
                                        labelStyle: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Nama Orang Tua',
                                        labelStyle: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'No.Hp Orang Tua',
                                        labelStyle: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    SizedBox( height: 16,)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
      // color: Colors.white,
      alignment: Alignment.center,
      child: Stack(
        children: [
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
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => PageBottomBar(),
                        //   ),
                        //   (route) => false,
                        // );
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        // color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Text(
                      ' Akun saya',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat"),
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
  double get maxExtent => 50; // tinggi maksimal

  @override
  double get minExtent => 20; // tinggi minimal

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
