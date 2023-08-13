import 'dart:convert';
import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:toistify/features/blog/model/news_model.dart';

// final newsRepoProvider = Provider((ref) => NewsRepos());

class ApiServices {

  // String endpoint = 'https://newsapi.org/v2/top-headlines?apiKey=1143124a2690403e94768271d9a56a4f&country=Ng';
  String endpoint = 'https://newsapi.org/v2/everything?q=Ng&apiKey=1143124a2690403e94768271d9a56a4f';
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

// class ApiServices {
//   String endpoint =
//       'https://newsapi.org/v2/everything?q=Ng&apiKey=1143124a2690403e94768271d9a56a4f';

//   Future<List<NewsModel>> getNews() async {
//     try {
//       Response response = await get(Uri.parse(endpoint));

//       if (response.statusCode == 200) {
//         final List result = jsonDecode(response.body)['articlesS'];
//         print(result);
//         return result.map(((e) => NewsModel.fromJson(e))).toList();
//       } else {
//         throw Exception(response.reasonPhrase);
//       }
//     } on SocketException catch (e) {
//       // Handle SocketException here (e.g., show an error message or retry the request).
//       throw Exception('Failed to connect to the server: ${e.message}');
//     } catch (e) {
//       // Handle other exceptions (e.g., JSON decoding error, etc.).
//       throw Exception('An error occurred: ${e.toString()}');
//     }
//   }
// }

final newsProvider = Provider<ApiServices>((ref) => ApiServices());
