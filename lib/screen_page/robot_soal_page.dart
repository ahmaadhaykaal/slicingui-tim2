import 'package:flutter/material.dart';
import 'package:slicingui_tim2/screen_page/mulai_belajar_page.dart';
import 'package:slicingui_tim2/screen_page/soal_terdeteksi_page.dart';

class PageRobotSoal extends StatelessWidget {
  const PageRobotSoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: double.infinity,
        color: Color(0xff468CE7),
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> PageBottomBar()));
                    },
                    child: Row(
                    children: [
                      Image.asset(
                        'assets/Vector.png',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/gallery.png',
                        width: 150,
                        height: 150,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Pindah ke halaman lain, misalnya menggunakan Navigator
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PageRobotSoalHasil()), // Ganti NextPage() dengan halaman yang ingin Anda tuju
                          );
                        },
                        child: Image.asset(
                          'assets/photo.png',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PageRobotSoalHasil extends StatelessWidget {
  const PageRobotSoalHasil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: double.infinity,
        color: Color(0xff468CE7),
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> PageBottomBar()));
                    },
                    child: Row(
                    children: [
                      Image.asset(
                        'assets/Vector.png',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 40,
                  child: Image.asset(
                    'assets/photosoal.png',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/gallery.png',
                        width: 150,
                        height: 150,
                      ),
                       GestureDetector(
                        onTap: () {
                          // Pindah ke halaman lain, misalnya menggunakan Navigator
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PageSoalTerdeteksi()), // Ganti NextPage() dengan halaman yang ingin Anda tuju
                          );
                        },
                        child: Image.asset(
                          'assets/photo.png',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
