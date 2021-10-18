// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vacinapp/user/pass.dart';
import 'package:vacinapp/user/register.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  void _acessar() {
    // print('acessar');
    bool cadastrado = false;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => PassUser(),
      ),
    );
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
                Icons.person_outline,
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
