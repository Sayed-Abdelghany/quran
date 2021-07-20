import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/screens/HomeScreen.dart';
import 'package:quran/screens/SplashScreen.dart';
void main(){
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.id,
        routes:{
          SplashScreen.id:(context)=> SplashScreen(),
          HomeScreen.id : (context)=> HomeScreen(),
        } ,
      ),
    );
  }
}
