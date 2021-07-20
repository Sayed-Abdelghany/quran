class QuranModel{
  String ?number;
  String ?name;
  String ? page;
  String ? text;
  QuranModel({this.number,this.name,this.page,this.text});

}

// import 'dart:convert';
// import 'package:http/http.dart'as http;
// import 'package:quran/Models/QuranModel.dart';
// import 'package:provider/provider.dart';
// class ApiHelper {
//   var apiKey = '073efbcebb634a65b14ab407d1941875';
//
//   Future<List<QuranModel>>  getSurah(context) async {
//     List<QuranModel> surah = [];
//     var response = await http.get(Uri.parse(
//         'https://newsapi.org/v2/top-headlines?country=${Provider.of<CountryProv>(context,listen: false).code}&apiKey=$apiKey'));
//     var body = jsonDecode(response.body);
//     try {
//       if (body["status"] == 'ok') {
//         body["articles"].forEach((article) {
//           QuranModel quranModel = QuranModel(
//             number: surah["number"],
//             name: surah"name"],
//
//           );
//           surah.add(quranModel);
//         }
//         );
//       }
//       else {
//         print('No Data');
//       }
//     }
//     catch (e) {
//       print(e);
//     }
//     return surah;
//   }