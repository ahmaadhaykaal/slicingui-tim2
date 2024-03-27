import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicingui_tim2/bab3/bab31.dart';
import 'package:slicingui_tim2/bab3/bab32.dart';
import 'package:slicingui_tim2/bab3/bab33.dart';
import 'package:slicingui_tim2/bab4/bab41.dart';
import 'package:slicingui_tim2/bab4/bab42.dart';
import 'package:slicingui_tim2/bab7/bab71.dart';
import 'package:slicingui_tim2/bab7/bab72.dart';
import 'package:slicingui_tim2/bab8/bab81.dart';
import 'package:slicingui_tim2/bab8/bab82.dart';
import 'package:slicingui_tim2/bab8/bab83.dart';
import 'package:slicingui_tim2/screen_page/mulai_belajar_page.dart';

class PageArtikel extends StatelessWidget {
  const PageArtikel({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                SizedBox(height: 15),
                Container(
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Bab 1 Trigonometri',
                            style: TextStyle(
                              fontSize: 18,
                              // fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '1.1 Pengukuran Sudut',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1581',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    // fontWeight: FontWeight.bold,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '1.2 Perbandingan Trigonometri Pada Segitiga Siku - Siku',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1210',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '1.3  Nilai Perbandingan Trigonometri untuk Sudut Istemewa',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '789',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '1.4 Perbandingan Sudut dan Sudut Relasi Trinogometri I dan II',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 35,
                                                  height: 35,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1581',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '1.5 Identitas Trigonometri',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1581',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        5), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Bab 2 Sudut',
                            style: TextStyle(
                              fontSize: 18,
                              // fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '2.1 Sudut Siku - Siku',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1581',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '2.2  Sudut lancip',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1092',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '2.3 Sudut tumpul',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '982',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Bab 3 Persamaan Linear Satu Variabel ',
                            style: TextStyle(
                              fontSize: 18,
                              // fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab31()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '3.1 Pengertian Persamaan Linear Satu Variabel',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '2011',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab32()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '3.2 Kesetaraan Bentuk PLSV',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1092',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab33()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '3.3 Penyelesaian Soal PLSV',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '982',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        5), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Bab 4 Persamaan Kuadrat',
                            style: TextStyle(
                              fontSize: 18,
                              // fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab41()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '4.1  Menyusun Persamaan Kuadrat Jika Diketahui Akar-akarnya',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1581',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab42()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '4.2 Menyusun Persamaan Kuadrat Jika Diketahui Jumlah dan\nHasil Kali Akar-akarnya',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1092',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        5), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Bab 5 (SPLDV)',
                            style: TextStyle(
                              fontSize: 18,
                              // fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '5.1 Pengertian',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1581',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '5.2 Metode grafik',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1092',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '5.3  Metode eliminasi',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '982',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '5.4 Metode  Subtitusi',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '654',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '5.5 Metode   Gabungan',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '142',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        5), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Bab 6 Aturan Sinus dan Cosinus',
                            style: TextStyle(
                              fontSize: 18,
                              // fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '6.1  Aturan Sinus',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1581',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => DetailPage()),
                              // );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '6.2 Aturan Cosinus',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1092',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        5), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Bab 7 Konsep Turunan Fungsi Aljabar ',
                            style: TextStyle(
                              fontSize: 18,
                              // fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab71()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '7.1 Konsep Turunan Fungsi',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '918',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab72()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '7.2 Rumus Turunan Fungsi Aljabar',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '882',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        5), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Bab 8 Mengenal Matriks',
                            style: TextStyle(
                              fontSize: 18,
                              // fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab81()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '8.1 Pengertian',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1581',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab82()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '8.2 Jenis Jenis',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1092',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageBab83()),
                              );
                            },
                            child: Stack(
                              children: [
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '8.3 Transpose',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              // fontFamily: ('Open Sans'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'Like.png',
                                                  width: 25,
                                                  height: 25,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1581',
                                                  style: TextStyle(
                                                    color: Color(0xff468CE7),
                                                    fontSize: 12,
                                                    fontFamily: ('Open Sans'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Image.asset(
                                    'ceklis.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
                            builder: (context) => PageBottomBar(),
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
              Image.asset('mat.png'),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35,),
                  Text(
                    'Matematika',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Alata',
                    ),
                  ),
                  Text(
                    'Matematika adalah ilmu yang\nmempelajari hal-hal seperti besaran,\nstruktur, ruang dan perubahan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Alata',
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
