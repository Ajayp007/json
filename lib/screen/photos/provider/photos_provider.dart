import 'package:flutter/material.dart';
import 'package:untitled/screen/photos/model/photos_model.dart';
import 'package:untitled/utils/jsonHelper/json_helper.dart';

class PhotosProvider with ChangeNotifier {
  List<PhotosModel> photosList = [];

  Future<void> getJson() async {
    JsonHelper helper = JsonHelper();

    photosList = await helper.photosJson();

    notifyListeners();
  }
}
