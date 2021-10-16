// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vacinapp/professional/pass.dart';
import 'package:vacinapp/professional/register.dart';

class ProfessionalLogin extends StatefulWidget {
  const ProfessionalLogin({Key? key}) : super(key: key);

  @override
  _ProfessionalLoginState createState() => _ProfessionalLoginState();
}

class _ProfessionalLoginState extends State<ProfessionalLogin> {
  void _acessar() {
    bool cadastrado = false;

    if (cadastrado) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => PassProfessional(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => RegisterProfessional(),
        ),
      );
    }
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Icon(
                Icons.health_and_safety,
                size: 100,
                color: Colors.blue[400],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "CPF (Somente números)",
                  labelStyle: TextStyle(
                    color: Colors.blue[400],
                    fontSize: 20,
                  ),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue[400],
                  backgroundColor: Colors.blue[400],
                ),
                onPressed: _acessar,
                child: const Text(
                  'Acessar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
