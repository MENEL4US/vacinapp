import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vacinapp/models/info.dart';
import 'package:http/http.dart' as http;

const urlBase = 'https://617e75d52ff7e600174bd7e2.mockapi.io/api/';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  var infos = <Info>[];

  Future _getInfos() async {
    var url = Uri.parse(urlBase + 'infos');
    var response = await http.get(url);
    Iterable lista = json.decode(response.body);
    infos = (lista).map((e) => Info.fromJson(e)).toList();
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
      body: FutureBuilder(
        future: _getInfos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return listaInfos();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
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
