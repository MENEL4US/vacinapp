import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vacinapp/models/api.dart';
import 'package:vacinapp/models/info.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  var infos = <Info>[];

  _getInfos() {
    API.getInfos().then((value) {
      setState(() {
        Iterable lista = json.decode(value.body);
        infos = (lista).map((e) => Info.fromJson(e)).toList();
      });
    });
  }

  _InformationState() {
    _getInfos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "VacinApp",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: listaInfos(),
    );
  }

  listaInfos() {
    return ListView.builder(
      itemCount: infos.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Text(
                infos[index].title,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                infos[index].text,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
