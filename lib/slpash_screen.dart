import 'dart:async';
import 'package:flutter/material.dart';
import 'package:piseth_phon_shop/screen/welcom_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200, ),
              child: Image.asset('assets/images/Logo.jpg',height: 400,)
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height:150),
                 Text(
                  'Pisth 168 App Online Shop',
                  style: TextStyle(fontSize: 18, color: Colors.red[400]),
                ),
               
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
