import 'package:dio/dio.dart';
import 'package:news_app_project/models/artilce_model.dart';

class NewsService {
  final Dio dio;

  NewsService(
    this.dio,
  );

  Future<List<ArticleModel>> getNews({required String category}) async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=90689f6548a94c58aeac4cf974498bf4&category=$category');

    Map<String, dynamic> jsondata = response.data;

    List<dynamic> articles = jsondata['articles'];
    List<ArticleModel> articleslist = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          subtile: article['description'],
          title: article['title']);

      articleslist.add(articleModel);
    }
    return articleslist;
    /*catch (e) {
       return [];
    }*/
  }
}
