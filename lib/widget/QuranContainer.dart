import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:quran/Models/QuranModel.dart';
class QuranContainer extends StatelessWidget {
  QuranModel? quranModel;
  QuranContainer({this.quranModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: .1.sh,
        width: .9.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.sp),
            color: Colors.orange
        ),
        child: Row(
          children: [
            Text(quranModel!.number!),
            SizedBox(width: .1.sw,),
            Text(quranModel!.name!),
          ],
        ),
      ),
    );
  }
}
