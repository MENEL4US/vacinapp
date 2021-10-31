// ignore_for_file: unnecessary_this, unused_local_variable

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class User {
  String name = '';

  User({required this.name});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = this.name;
    return data;
  }

  Future<User> get() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? aux = prefs.getString('user_info');
    Map<String, dynamic> mapUser = json.decode(aux!);
    User user = User.fromJson(mapUser);
    return user;
  }

  void save() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_info', json.encode(this.toJson()));
  }
}
