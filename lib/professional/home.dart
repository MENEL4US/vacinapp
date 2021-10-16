// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfessionalHome extends StatefulWidget {
  const ProfessionalHome({Key? key}) : super(key: key);

  @override
  _ProfessionalHomeState createState() => _ProfessionalHomeState();
}

class _ProfessionalHomeState extends State<ProfessionalHome> {
  final int _qtd = 0;

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

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
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // height: 50,
            // color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.grey[200],
                child: Column(
                  children: [
                    ListTile(
                      title: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          'Vacina contra Meningococo C',
                          style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 22,
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          '1ª dose',
                          style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Natasha Romanoff',
                        style: TextStyle(
                          color: Colors.blue[400],
                          fontSize: 22,
                        ),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          '17h21',
                          style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
        tooltip: 'Nova vacina',
        child: Icon(Icons.add),
      ),
    );
  }
}
