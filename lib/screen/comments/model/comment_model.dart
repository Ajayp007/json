class CommentModel {
  String? name, email, body;
  int? postId, id;

  CommentModel({this.name, this.body, this.id, this.email, this.postId});

  factory CommentModel.mapTomodel(Map m1) {
    return CommentModel(
        body: m1['body'],
        id: m1['id'],
        name: m1['name'],
        email: m1['email'],
        postId: m1['postId']);
  }
}
