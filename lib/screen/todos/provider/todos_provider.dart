import 'package:flutter/material.dart';
import 'package:untitled/screen/todos/model/todos_model.dart';
import 'package:untitled/utils/jsonHelper/json_helper.dart';

class TodosProvider with ChangeNotifier
{
  List<TodosModel> todosList =[];

  Future<void> getJson()
  async {
    JsonHelper helper = JsonHelper();
    todosList = await helper.todoJson();
    notifyListeners();
  }
}