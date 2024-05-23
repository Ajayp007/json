import 'package:flutter/material.dart';
import 'package:untitled/screen/country/model/country_model.dart';
import 'package:untitled/utils/jsonHelper/json_helper.dart';

class CountryProvider with ChangeNotifier {
  List<CountryModel> countryList = [];

  Future<void> getJson() async {
    JsonHelper helper = JsonHelper();
    countryList = await helper.countryJson();
    notifyListeners();
  }
}
