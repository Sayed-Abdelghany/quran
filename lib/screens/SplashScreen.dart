import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quran/screens/HomeScreen.dart';
class SplashScreen extends StatefulWidget {
  static String id = 'SplashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.popAndPushNamed(context, HomeScreen.id);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/qr.jpg'),
      ),
    );
  }
}
