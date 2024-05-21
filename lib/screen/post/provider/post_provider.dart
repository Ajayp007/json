import 'package:flutter/material.dart';
import 'package:untitled/utils/jsonHelper/json_helper.dart';

import '../model/post_model.dart';

class PostProvider with ChangeNotifier
{
  List<PostModel> postList =[];

  Future<void> getJson()
  async {
    JsonHelper helper =  JsonHelper();
    postList = await helper.postJson();
    notifyListeners();
  }

}