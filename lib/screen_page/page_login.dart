import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicingui_tim2/screen_page/login_signup_page.dart';
import 'package:slicingui_tim2/screen_page/register_page.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  bool varBool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: 700,
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
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuPage()),
                              (route) => false);
                        },
                        icon: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white, 
                              width: 2,
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //logo
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Image(
                              image: AssetImage(
                                'assets/StudyTeach.png',
                              ),
                              width: 280,
                              height: 200,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //circle
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/ellipse1.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 0,
                    child: Image.asset(
                      'assets/ellipse2.png',
                      width: 60,
                      height: 100, 
                    ),
                  ),

                  Positioned(
                    top: 120,
                    left: 20,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open Sans'),
                    ),
                  ),

                  //logokiribawah
                  Positioned(
                    top: 600,
                    right: 0,
                    child: Image.asset(
                      'assets/pana.png',
                      width: 125,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Positioned(
                    top: 170,
                    left: 0,
                    right: 0,
                    bottom: 80,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              60.0), // Melengkungkan ujung kiri atas
                          bottomRight: Radius.circular(
                              60.0), // Melengkungkan ujung kanan bawah
                        ),
                      ),
                      color: Colors.white,
                      child: Container(
                        width: 200,
                        height: 100,
                        constraints: BoxConstraints(
                          minHeight: 360,
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding:
                                  EdgeInsets.fromLTRB(35, 10, 20, 10),
                              title: Text(
                                'Welcome Back',
                                style: TextStyle(
                                    color: Color(0xff3D2C8D),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Open Sans'),
                              ),
                              subtitle: Text(
                                'Hello there, sign in continue',
                                style: TextStyle(
                                    color: Color(0xffA9A297),
                                    // fontWeight: FontWeight.bold,
                                    fontFamily: 'Open Sans'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 30),
                              child: Container(
                                width: 350,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person_outline,
                                          color: Color(0xff3D2C8D),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Username or Email',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Color(0xff3D2C8D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.grey.withOpacity(0.2),
                                        filled: true,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        hintText:
                                            'Enter your username or email',
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                      ),
                                    ),

                                    //passwordField
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.lock_outlined,
                                          color: Color(0xff3D2C8D),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Password',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Color(0xff3D2C8D),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.grey.withOpacity(0.2),
                                        filled: true,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        hintText: 'Enter your password',
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                      ),
                                    ),

                                    //forgot
                                    SizedBox(
                                      height: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Handler ketika "Forgot Password" ditekan
                                      },
                                      child: Text(
                                        'Forgot Password?',
                                        style: TextStyle(
                                          color: Color(0xff3D2C8D),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //button
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => CounterView()));
                              },
                              padding: EdgeInsets.symmetric(
                                horizontal: 175,
                                vertical: 15,
                              ),
                              color: Color.fromARGB(255, 196, 162, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                            //link
                            SizedBox(
                              height: 15,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(color: Color(0xff3D2C8D)),
                                  children: [
                                    TextSpan(
                                        text: 'Sign up',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        PageRegister()));
                                          },
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold))
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
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
