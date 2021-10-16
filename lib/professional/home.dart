// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfessionalHome extends StatefulWidget {
  const ProfessionalHome({Key? key}) : super(key: key);

  @override
  _ProfessionalHomeState createState() => _ProfessionalHomeState();
}

class _ProfessionalHomeState extends State<ProfessionalHome> {
  int _qtd = 0;

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
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
              child: Text(
                "Vacinas aplicadas hoje $_qtd",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
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
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
        tooltip: 'Nova vacina',
        child: Icon(Icons.add),
      ),
    );
  }
}
