// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class User {
  var name;

  User({required this.name});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }

  void save(String chave) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(chave, json.encode(toJson()));
  }
}
