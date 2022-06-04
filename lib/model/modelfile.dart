class ModelNewsArticle {
  String title;
  String publishedAt;
  String description;
  String url;
  String urlImage;

  ModelNewsArticle(
      {required this.title,
      required this.publishedAt,
      required this.description,
      required this.url,
      required this.urlImage});

  factory ModelNewsArticle.fromJson(Map<String, dynamic> json) {
    return ModelNewsArticle(
      title: json['title'],
      publishedAt: json['publishedAt'],
      description: json['description'],
      url: json['url'],
      urlImage: json['urlImage'],
    );
  }
}
