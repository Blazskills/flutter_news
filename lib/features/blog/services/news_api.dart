import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:toistify/features/blog/model/news_model.dart';

// final newsRepoProvider = Provider((ref) => NewsRepos());

class ApiServices {
  
  String endpoint = 'https://newsapi.org/v2/top-headlines?apiKey=1143124a2690403e94768271d9a56a4f&country=Ng';
  getNews() async {
    Response response = await get(Uri.parse(endpoint));
    // print(response.body);
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['articles'];
      print(result);
      return result.map(((e) => NewsModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final newsProvider = Provider<ApiServices>((ref) => ApiServices());



// class ApiServices {
//    Future<http.Response> getNews() async {
//     final url = Uri.parse(
//         'https://newsapi.org/v2/top-headlines?apiKey=1143124a2690403e94768271d9a56a4f&country=Ng');
//     final response = await http.get(url);
//     log(response.body);
//     return response;
//   }
// }



// reqres.in/api/users?pages=2





// import "dart:convert";

// import "package:http/http.dart" as http;
// import "package:toistify/features/blog/model/news_model.dart";

// class BibleServices {
//   Future<List<BibleModel>> getBibles() async {
//     List<BibleModel> myNewList = [];
//     const url = "https://newsapi.org/v2/top-headlines?apiKey=1143124a2690403e94768271d9a56a4f&country=Ng";
//     final response = await http.get(Uri.parse(url));
//     print(response.body);
//     print('loeServices');
//     if (response.statusCode < 300) {
//       final jsonResponse = jsonDecode(response.body)['articles'];
//       for (final bibles in jsonResponse) {
//         myNewList.add(BibleModel.fromJson(bibles));
//       }
//     } else {
//       throw Exception("Error");
//     }
//     return myNewList;
//   }
// }


  