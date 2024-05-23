class NewsModel {
  String? status;
  int? totalResults;
  List<ArticlesModel>? articles = [];

  NewsModel({this.status, this.totalResults, this.articles});

  factory NewsModel.mapToModel(Map m1) {
    List aList = m1['articles'];
    return NewsModel(
        status: m1['status'],
        totalResults: m1['totalResults'],
        articles: aList.map((e) => ArticlesModel.mapToModel(e)).toList());

  }
}

class ArticlesModel {
  String? author, title, description, url, urlToImage, publishedAt, content;
  SourceModel? s1;

  ArticlesModel(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content,
      this.s1});

  factory ArticlesModel.mapToModel(Map m1) {
    return ArticlesModel(
        author: m1['author'],
        title: m1['title'],
        description: m1['description'],
        url: m1['url'],
        urlToImage: m1['urlToImage'],
        publishedAt: m1['publishedAt'],
        content: m1['content'],
        s1: SourceModel.mapToModel(m1['source']));
  }
}

class SourceModel {
  String? id, name;

  SourceModel({this.id, this.name});

  factory SourceModel.mapToModel(Map m1) {
    return SourceModel(id: m1['id'], name: m1['name']);
  }
}
