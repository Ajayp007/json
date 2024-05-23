import 'package:flutter/material.dart';
import 'package:untitled/screen/news/model/news_model.dart';
import 'package:untitled/utils/jsonHelper/json_helper.dart';

class NewsProvider with ChangeNotifier {
  List<ArticlesModel>? newsList = [];

  Future<void> getNewsJson() async {
    JsonHelper helper = JsonHelper();
    NewsModel n1 = await helper.newsJson();
    newsList = n1.articles;
    notifyListeners();
  }
}
