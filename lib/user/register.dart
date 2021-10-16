// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  void _registrar() {}
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
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Novo usuário",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Nome",
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
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Data de Nascimento (DD/MM/AAAA)",
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
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Tipo Sanguíneo",
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
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Telefone",
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
                onPressed: _registrar,
                child: const Text(
                  'Registrar',
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
