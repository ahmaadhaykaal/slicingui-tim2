import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageMulai extends StatefulWidget {
  const PageMulai({super.key});

  @override
  State<PageMulai> createState() => _PageMulaiState();
}

class _PageMulaiState extends State<PageMulai> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: 600,
          width: double.infinity,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //topbar
                  Positioned(
                    top: 5,
                    left: 15,
                    child: Row(
                      children: [
                        SizedBox(width: 5),
                        Text(
                          '20:12',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 25,
                    child: Row(
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
                  ),

                  //hellokiara
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/square.png',
                          ),
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: MediaQuery.of(context).size.width / 2.15 - 50,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/waving-hand_1f44b.png',
                          ),
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Hello Keira',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans'),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 50,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('Avatar-29.png'),
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),

                  //card
                  Positioned(
                    top: 100,
                    right: 25,
                    left: 25,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 56, 109,
                                  244), // Warna transparan di pinggir
                              Color.fromARGB(
                                  151, 138, 142, 255), // Warna utama di tengah
                              Color.fromARGB(
                                  151, 138, 142, 255), // Warna utama di tengah
                              Color.fromARGB(255, 56, 109,
                                  244), // Warna transparan di pinggir
                            ],
                            stops: [
                              0.1,
                              0.4,
                              0.6,
                              0.9
                            ], // Menentukan ukuran masing-masing warna
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 20,
                                left: 20,
                                child: Text(
                                  'Mulai\nBelajar',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Open Sans'),
                                )),
                            Positioned(
                              top: 0,
                              right: 20,
                              child: Image.asset(
                                'assets/Group 1.png',
                                width: 100,
                                height: 95,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  bottom: 20,
                                  left: 20,
                                  right: 20,
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    hintText: 'apa yang ingin kamu pelajari?',
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 186, 186, 186)),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    prefixIcon: Icon(Icons.search,
                                        color:
                                            Color.fromARGB(255, 186, 186, 186)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //menu text
                  Positioned(
                    top: 300,
                    right: 25,
                    left: MediaQuery.of(context).size.width / 6 - 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceEvenly, // Mengatur jarak antar item
                      children: [
                        TextButton(
                          onPressed: () {
                            // Aksi ketika tombol pertama ditekan
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.withOpacity(0.2)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/alembic_2697-fe0f.png',
                                width: 15,
                                height: 15,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'kimia',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            // Aksi ketika tombol pertama ditekan
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.withOpacity(0.2)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/abacus_1f9ee.png',
                                width: 15,
                                height: 15,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'matematika',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            // Aksi ketika tombol pertama ditekan
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.withOpacity(0.2)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/sparkles_2728.png',
                                width: 15,
                                height: 15,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'fisika',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            // Aksi ketika tombol pertama ditekan
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.withOpacity(0.2)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/uil_english-to-chinese.png',
                                width: 15,
                                height: 15,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'bahasa inggris',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //rekomendasi
                  Positioned(
                    top: 350,
                    left: MediaQuery.of(context).size.width / 6 - 50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Aksi ketika tombol ditekan
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/Avatar-20.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Anika Rahman',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Guru Bahasa Inggris',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontFamily: 'Open Sans',
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/Like.png',
                                          width: 25,
                                          height: 25,
                                          fit: BoxFit.cover,
                                        ),
                                        Text(
                                          '1581',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 11,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                left: 0,
                                                bottom: 0,
                                                child: Icon(
                                                  Icons
                                                      .bookmark_border_outlined,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue
                                      .withOpacity(0.2), // Warna bayangan
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Aksi ketika tombol ditekan
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/Avatar-14.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Muhammad',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Guru Fisika',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontFamily: 'Open Sans',
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/Like.png',
                                          width: 25,
                                          height: 25,
                                          fit: BoxFit.cover,
                                        ),
                                        Text(
                                          '1581',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 11,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                left: 0,
                                                bottom: 0,
                                                child: Icon(
                                                  Icons
                                                      .bookmark_border_outlined,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue
                                      .withOpacity(0.2), // Warna bayangan
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Aksi ketika tombol ditekan
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/Avatar-1.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Firdaus Riski',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Guru Matematika',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontFamily: 'Open Sans',
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/Like.png',
                                          width: 25,
                                          height: 25,
                                          fit: BoxFit.cover,
                                        ),
                                        Text(
                                          '1581',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 11,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                left: 0,
                                                bottom: 0,
                                                child: Icon(
                                                  Icons
                                                      .bookmark_border_outlined,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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

                  TabBarView(
                    controller: _tabController,
                    children: const [
                      // PageRegisterForm(),
                      // PageGaleryMovie(),
                      // PageSearchListData(),
                      // PageSearchListData(),
                      // PageSearchListData(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20), bottom: Radius.circular(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabBar(
                isScrollable: true,
                labelColor: Colors.green,
                unselectedLabelColor: Colors.grey,
                controller: _tabController,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.school),
                  ),
                  Tab(
                    icon: Icon(Icons.lightbulb_outline),
                  ),
                  Tab(
                    icon: Icon(Icons.notifications_none_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.account_circle_outlined),
                  ),
                ],
              ),
              
              SizedBox(width: 16),
            ],
            //   child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //         Tab(
            //           icon: Icon(Icons.home_outlined),
            //         ),
            //         Tab(
            //           icon: Icon(Icons.school),
            //         ),
            //         Tab(
            //           icon: Icon(Icons.lightbulb_outline),
            //         ),
            //         Tab(
            //           icon: Icon(Icons.notifications_none_outlined),
            //         ),
            //         Tab(
            //           icon: Icon(Icons.account_circle_outlined),
            //         ),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
