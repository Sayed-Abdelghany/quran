import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quran/Models/QuranModel.dart';
class ApiHelper{
  Future<List<QuranModel>>  getSurah() async{
    List<QuranModel> surah = [];
   var response = await http.get(Uri.parse('http://api.alquran.cloud/v1/surah/114/en.asad'));
   var body = jsonDecode(response.body);
   try {
     if (body["status"]== 'ok') {
       body["data"].forEach((data) {
         QuranModel quranModel = QuranModel(
           name: data["number"],
           number: data["number"],
           page: data["page"],
           text: data["text"],
         );
         surah.add(quranModel);
       }
       );
     } else {
       print('No Data');
     }
   }
   catch(e){
     print(e);
   }
   return surah;
  }
}