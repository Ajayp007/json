class PostModel {
  String? title, body;
  int? userId, id;

  PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.mapTomodel(Map m1) {
    return PostModel(
        userId: m1['userId'],
        id: m1['id'],
        title: m1['title'],
        body: m1['body']);
  }
}
