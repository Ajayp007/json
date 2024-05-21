import 'package:flutter/material.dart';
import 'package:untitled/screen/albums/model/album_model.dart';
import 'package:untitled/utils/jsonHelper/json_helper.dart';

class AlbumProvider with ChangeNotifier {
  List<AlbumModel> albumList = [];

  Future<void> getJson() async {
    JsonHelper helper = JsonHelper();
    albumList = await helper.albumJson();
    notifyListeners();
  }
}
