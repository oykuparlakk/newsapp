import 'package:dio/dio.dart';
import 'package:newsapp/constant/constant.dart';
import 'package:newsapp/model/modelfile.dart';

class WebService {
  var dio = Dio();

  Future<List<ModelNewsArticle>> getTopHeadlines() async {
    final response = await dio.get(Constants.TOPHEADLINES);

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article) => ModelNewsArticle.fromJson(article)).toList();
    } else {
      throw Exception('response failed');
    }
  }

  Future<List<ModelNewsArticle>> getNewsByCountry(String country) async {
    final response = await dio.get(Constants.headLiensFor(country));
    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article) => ModelNewsArticle.fromJson(article)).toList();
    } else {
      throw Exception('response failed');
    }
  }





  
}
