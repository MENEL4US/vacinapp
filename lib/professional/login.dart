import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vacinapp/models/user.dart';
import 'home.dart';

class ProfessionalLogin extends StatefulWidget {
  const ProfessionalLogin({Key? key}) : super(key: key);

  @override
  _ProfessionalLoginState createState() => _ProfessionalLoginState();
}

class _ProfessionalLoginState extends State<ProfessionalLogin> {
  Future<void> _acessar() async {
    if (_professionalInput.text != '') {
      User user = User(name: _professionalInput.text);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('professional_info', user.name);
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const ProfessionalHome(),
      ),
    );
  }

  final TextEditingController _professionalInput = TextEditingController();

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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Icon(
                Icons.health_and_safety,
                size: 100,
                color: Colors.blue[400],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextFormField(
                controller: _professionalInput,
                keyboardType: TextInputType.text,
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
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
