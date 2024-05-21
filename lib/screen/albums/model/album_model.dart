class AlbumModel {
  String? title;
  int? userId, id;

  AlbumModel({this.title, this.userId, this.id});

  factory AlbumModel.mapTomodel(Map m1) {
    return AlbumModel(id: m1['id'], userId: m1['userId'], title: m1['title']);
  }
}
