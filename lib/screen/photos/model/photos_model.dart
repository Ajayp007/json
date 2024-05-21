class PhotosModel {
  String? title, url, thumbnailUrl;
  int? albumId, id;

  PhotosModel({this.title, this.url, this.thumbnailUrl, this.albumId, this.id});

  factory PhotosModel.mapTomodel(Map m1) {
    return PhotosModel(
        id: m1['id'],
        albumId: m1['albumId'],
        title: m1['title'],
        url: m1['url'],
        thumbnailUrl: m1['thumbnailUrl']);
  }
}
