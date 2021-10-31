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

  Future<User> get() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? aux = prefs.getString('user_info');
    Map<String, dynamic> mapUser = json.decode(aux!);
    User user = User.fromJson(mapUser);
    return user;
  }

  void save(String chave) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(chave, json.encode(toJson()));
  }
}
