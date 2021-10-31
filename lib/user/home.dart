import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vacinapp/models/api.dart';
import 'package:vacinapp/models/vacine.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  var emDia = <MyVaccine>[];
  var atrasadas = <MyVaccine>[];
  var proximas = <MyVaccine>[];

  _getMyVaccines() {
    var vaccines = <MyVaccine>[];

    API.getMyVaccines().then((value) {
      setState(() {
        Iterable lista = json.decode(value.body);
        vaccines = (lista).map((e) => MyVaccine.fromJson(e)).toList();

        for (var element in vaccines) {
          switch (element.status) {
            case 'E':
              emDia.insert(emDia.length, element);
              break;
            case 'P':
              proximas.insert(proximas.length, element);
              break;
            case 'A':
              atrasadas.insert(atrasadas.length, element);
              break;
            default:
          }
        }
      });
    });
  }

  _UserHomeState() {
    _getMyVaccines();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "VacinApp",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[400],
          bottom: const TabBar(
            tabs: [
              Tab(text: "EM DIA"),
              Tab(text: "PRÓXIMAS"),
              Tab(text: "ATRASADAS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: emDia.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.green[300],
                    child: Column(
                      children: [
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              emDia[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              emDia[index].description,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
            ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: proximas.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.deepPurple[400],
                    child: Column(
                      children: [
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              proximas[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              proximas[index].description,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
            ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: atrasadas.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.red[400],
                    child: Column(
                      children: [
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              atrasadas[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              atrasadas[index].description,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            )
          ],
        ),
      ),
    );
  }
}
