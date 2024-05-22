import 'package:flutter/material.dart';
import 'package:untitled/screen/user/model/user_model.dart';
import 'package:untitled/utils/jsonHelper/json_helper.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> userList = [];

  Future<void> getJson() async {
    JsonHelper helper = JsonHelper();

    userList = await helper.userJson();

    notifyListeners();
  }
}
