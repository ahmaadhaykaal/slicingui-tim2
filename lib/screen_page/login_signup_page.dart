import 'package:flutter/material.dart';
import 'package:slicingui_tim2/screen_page/page_login.dart';
import 'package:slicingui_tim2/screen_page/register_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(152, 71, 77, 255), // Warna utama di tengah
                  Color.fromARGB(
                      255, 56, 109, 244), // Warna transparan di pinggir
                  Color.fromARGB(
                      255, 56, 109, 244), // Warna transparan di pinggir
                  Color.fromARGB(152, 71, 77, 255), // Warna utama di tengah
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
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    Image(
                      image: AssetImage(
                        'assets/amico.png',
                      ),
                      width: 280,
                      height: 200,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 265,
            left: 20,
            child: Text(
              'Selamat Datang \nMember StudyTeach',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans'),
            ),
          ),
          Positioned(
            top: 355,
            left: 20,
            child: Text(
              'Pendidikan adalah paspor untuk masa \ndepan, karena hari esok adalah milik \nmereka yang mempersiapkannya hari ini.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                // fontFamily: 'Open Sans'
              ),
            ),
          ),
          Positioned(
            top: 450,
            right: 0,
            child: Image.asset(
              'assets/be4ac72b14938594736be7ff19549d0b.png',
              width: 120,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 425,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageLogin()));
                  },
                  child: Container(
                    width: 400,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/logos_google-icon.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    => PageRegister()
                    ));
                  },
                  child: Container(
                    width: 400,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 134, 169, 255),
                          Color.fromARGB(255, 54, 111, 255),
                          Color.fromARGB(255, 51, 109, 253),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          color: Color(0xffF2F2F2),
                          // color: Color(0xff333333),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
