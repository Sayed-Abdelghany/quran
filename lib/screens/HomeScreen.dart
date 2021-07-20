import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Models/QuranModel.dart';
import 'package:quran/widget/QuranContainer.dart';
import 'package:quran/api_helper/api_helper.dart';
class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<QuranModel>data=[];
  ApiHelper apiHelper = ApiHelper();
  getSurah(){
    apiHelper.getSurah().then((value) {
      setState(() {
        data = value;
      });
    }
    );
  }
  @override
  void initState() {
    super.initState();
    getSurah();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('القرآن الكريم',
          style: TextStyle(color: Colors.deepPurple,
              fontSize: 30.sp,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        height: .99.sh,
        width: 1.sw,
        child: ListView.builder(
          itemCount: data.length,
            itemBuilder: (context,index)=>
        QuranContainer(),
        ),
      ),
    );
  }
}

