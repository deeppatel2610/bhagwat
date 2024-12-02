import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/geeta_model.dart';

class HomeProvider extends ChangeNotifier {
  List<GeetaModel> chapterList = [];
  String languages = 'Sanskrit';

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('asset/json/bhagwat geeta.json');
    final geeta = jsonDecode(json);
    chapterList = (geeta as List)
        .map(
          (e) => GeetaModel.fromJson(e),
        )
        .toList();
    notifyListeners();
  }

  void dropdown(String value) {
    languages = value;
    notifyListeners();
  }

  HomeProvider() {
    jsonParsing();
  }
}
