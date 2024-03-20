import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(0, 71, 255, 0),Color.fromRGBO(0, 70, 251, 1),Color.fromRGBO(0, 70, 251, 1),Color.fromRGBO(0, 71, 255, 0)],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 150,),
                    Image(image: AssetImage('assets/logo.png',
                    ),
                    width: 300,
                    height: 300,)
          ],
        ),
      ),
    );
  }
}