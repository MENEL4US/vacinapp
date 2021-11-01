import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vacinapp/models/applied.dart';
import 'package:http/http.dart' as http;

const urlBase = 'https://617e75d52ff7e600174bd7e2.mockapi.io/api/';

class ProfessionalHome extends StatefulWidget {
  const ProfessionalHome({Key? key}) : super(key: key);

  @override
  _ProfessionalHomeState createState() => _ProfessionalHomeState();
}

class _ProfessionalHomeState extends State<ProfessionalHome> {
  var applieds = <Applied>[];

  _getApplieds() async {
    var url = Uri.parse(urlBase + 'applied_vaccines');
    var response = await http.get(url);
    Iterable lista = json.decode(response.body);
    applieds = (lista).map((e) => Applied.fromJson(e)).toList();
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
        future: _getApplieds(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildContainer();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  buildContainer() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            'Vacinas aplicadas hoje',
            style: TextStyle(
              color: Colors.blue[200],
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: applieds.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Column(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                applieds[index].name,
                                style: TextStyle(
                                  color: Colors.blue[400],
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Text(
                                applieds[index].description,
                                style: TextStyle(
                                  color: Colors.blue[400],
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              applieds[index].user,
                              style: TextStyle(
                                color: Colors.blue[400],
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (
              BuildContext context,
              int index,
            ) =>
                const Divider(),
          ),
        )
      ],
    );
  }
}
