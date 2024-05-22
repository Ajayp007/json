import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:untitled/screen/albums/model/album_model.dart';
import 'package:untitled/screen/comments/model/comment_model.dart';
import 'package:untitled/screen/photos/model/photos_model.dart';
import 'package:untitled/screen/post/model/post_model.dart';
import 'package:untitled/screen/todos/model/todos_model.dart';
import 'package:untitled/screen/user/model/user_model.dart';

class JsonHelper {
  Future<List<PostModel>> postJson() async {
    String postJson = await rootBundle.loadString("assets/json/post.json");
    List json = jsonDecode(postJson);
    List<PostModel> l1 = json.map((e) => PostModel.mapTomodel(e)).toList();
    return l1;
  }

  Future<List<CommentModel>> commentJson() async {
    String commentJson =
        await rootBundle.loadString("assets/json/comments.json");
    List cjson = jsonDecode(commentJson);
    List<CommentModel> l2 =
        cjson.map((e) => CommentModel.mapTomodel(e)).toList();
    return l2;
  }

  Future<List<AlbumModel>> albumJson() async {
    String albumJson = await rootBundle.loadString("assets/json/albums.json");
    List aJson = jsonDecode(albumJson);
    List<AlbumModel> l3 = aJson.map((e) => AlbumModel.mapTomodel(e)).toList();
    return l3;
  }

  Future<List<PhotosModel>> photosJson() async {
    String photoJson = await rootBundle.loadString("assets/json/photos.json");
    List pJson = jsonDecode(photoJson);
    List<PhotosModel> l4 = pJson.map((e) => PhotosModel.mapTomodel(e)).toList();
    return l4;
  }

  Future<List<TodosModel>> todoJson() async {
    String todoJson = await rootBundle.loadString("assets/json/todos.json");
    List tJson = jsonDecode(todoJson);
    List<TodosModel> l5 = tJson.map((e) => TodosModel.mapTomodel(e)).toList();
    return l5;
  }

  Future<List<UserModel>> userJson() async {
    String userJsonString =
        await rootBundle.loadString("assets/json/user.json");

    List userList = jsonDecode(userJsonString);
    List<UserModel> l6 = userList
        .map(
          (e) => UserModel.mapToModel(e),
        )
        .toList();

    return l6;
  }
}
