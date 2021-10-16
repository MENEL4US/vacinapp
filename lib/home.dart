import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _profissional() {
    print('Página profissional');
  }

  void _usuario() {
    print('Usuário');
  }

  void _saibamais() {
    print('Saiba mais');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: Text(
                "VacinApp",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 55,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  _usuario();
                },
                child: const Text(
                  'USUÁRIO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  _profissional();
                },
                child: const Text(
                  'PROFISSIONAL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                  // backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  _saibamais();
                },
                child: const Text(
                  'Saiba mais sobre o VacinApp',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Image.asset(
                'images/ms-logo.png',
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
