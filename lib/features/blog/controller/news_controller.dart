import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toistify/features/blog/model/news_model.dart';
import 'package:toistify/features/blog/services/news_api.dart';

final newsDataProvider = FutureProvider<List<NewsModel>>((ref) async {
  return await ref.watch(newsProvider).getNews();
});

