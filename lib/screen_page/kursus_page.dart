import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicingui_tim2/screen_page/mulai_belajar_page.dart';

class PageKursus extends StatefulWidget {
  const PageKursus({super.key});

  @override
  State<PageKursus> createState() => _PageKursusState();
}

class _PageKursusState extends State<PageKursus> with TickerProviderStateMixin {
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
          height: 750,
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageBottomBar(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/back.png',
                            ),
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: MediaQuery.of(context).size.width / 2.15 - 20,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Detail',
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
                          image: AssetImage('other.png'),
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),

                  //card
                  Positioned(
                    top: 80,
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
                            // image: DecorationImage(
                            //   image: AssetImage('assets/kursus.png'),
                            //   fit: BoxFit.cover,
                            // ),
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 56, 109,
                                    244), // Warna transparan di pinggir
                                Color.fromARGB(151, 138, 142,
                                    255), // Warna utama di tengah
                                Color.fromARGB(151, 138, 142,
                                    255), // Warna utama di tengah
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
                          child: Container(
                              child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                bottom: 5,
                                left: MediaQuery.of(context).size.width / 3.30 -
                                    50,
                                child: Image.asset('assets/kursus.png'),
                              )
                            ],
                          ))),
                    ),
                  ),

                  Positioned(
                      top: 270,
                      left: 40,
                      right: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Mengatur tata letak teks menjadi rata kiri
                        children: [
                          Text(
                            "Kursus Online",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProzaLibre'),
                          ),
                          Text(
                            "Dalam Matematika",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProzaLibre'),
                          ),
                          Text(
                            "Tim Kami Sebagian Mengambil Tugas",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff9A9A9A),
                                fontFamily: 'Open Sans'),
                          ),
                          Text(
                            "Matematika",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff9A9A9A),
                                fontFamily: 'Open Sans'),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/Like.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '785  ',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(
                                'assets/Lightning-alt.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '1k+',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )),
                  Positioned(
                    top: 410,
                    left: 40,
                    right: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color:
                                    Colors.white, // Warna latar belakang kotak
                                borderRadius: BorderRadius.circular(
                                    10), // Contoh pembulatan sudut
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), // Warna bayangan
                                    spreadRadius: 2, // Menyebar bayangan
                                    blurRadius: 3, // Ketajaman bayangan
                                    offset:
                                        Offset(0, 0.5), // Posisi bayangan (x, y)
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/University.png',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '5 Contoh Soal',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Open Sans',),
                                  ),
                                  Text(
                                    'Contoh soal yaitu 5 yang sesuai permintaan',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Open Sans',
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color:
                                    Colors.white, // Warna latar belakang kotak
                                borderRadius: BorderRadius.circular(
                                    10), // Contoh pembulatan sudut
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), // Warna bayangan
                                    spreadRadius: 2, // Menyebar bayangan
                                    blurRadius: 3, // Ketajaman bayangan
                                    offset:
                                        Offset(0, 0.5), // Posisi bayangan (x, y)
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/Present.png',
                                width: 10,
                                height: 10,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '5 Artikel',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Open Sans',),
                                  ),
                                  Text(
                                    'Total 8 Artikel yang mudah dipahami',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Open Sans',
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    top: 550,
                    left: 30,
                    right: 30,
                    child: Stack(children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Avatar-1.png',
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Firdaus Riski',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Open Sans",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Guru Matematika',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontFamily: "Open Sans",
                                    ),
                                  ),
                                  Row(children: [
                                    Image.asset(
                                      'assets/Like.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    Text(
                                      '3219',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Open Sans",
                                          color: Colors.blue),
                                    ),
                                  ]),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5))),
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    Size(30, 30)),
                                            side: MaterialStateProperty.all(
                                              BorderSide(
                                                  color: Colors.grey,
                                                  width: 0.5),
                                            ),
                                          ),
                                          child: Text(
                                            'matematika',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontFamily: "Open Sans"),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5))),
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    Size(30, 30)),
                                            side: MaterialStateProperty.all(
                                              BorderSide(
                                                  color: Colors.grey,
                                                  width: 0.5),
                                            ),
                                          ),
                                          child: Text(
                                            'trigonometri',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontFamily: "Open Sans"),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5))),
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    Size(30, 30)),
                                            side: MaterialStateProperty.all(
                                              BorderSide(
                                                  color: Colors.grey,
                                                  width: 0.5),
                                            ),
                                          ),
                                          child: Text(
                                            'geometri',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontFamily: "Open Sans"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Image.asset('assets/other.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
