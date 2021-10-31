import 'dart:io';

import 'package:flutter/material.dart';
import 'package:vacinapp/home.dart';
import 'home.dart';
import 'information.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
