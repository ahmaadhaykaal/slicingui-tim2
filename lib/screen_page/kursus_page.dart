import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                            'assets/back.png',
                          ),
                          width: 20,
                          height: 20,
                        ),
                      ],
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
                          // image: DecorationImage(
                          //   image: AssetImage('assets/kursus.png'),
                          //   fit: BoxFit.cover,
                          // ),
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
                         child: Container(
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                bottom: 5,
                                left: MediaQuery.of(context).size.width / 3.30 - 50,
                                child: Image.asset('assets/kursus.png'),
                              )
                            ],
                          )
                         )
                      ),
                    ),
                  ),

                  TabBarView(
                    controller: _tabController,
                    children: const [
                      // PageKursus(),
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
