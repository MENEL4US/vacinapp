// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  void _voltar() {
    print('Voltar');
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
          actions: [
            IconButton(
              onPressed: _voltar,
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'O que é o VacinApp?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  'Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est. Si num tem leite então bota uma pinga aí cumpadi! Cevadis im ampola pa arma uma pindureta. Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque.',
                  style: TextStyle(color: Colors.grey[700], fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'A quem é destinado o VacinApp?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  'Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est. Si num tem leite então bota uma pinga aí cumpadi! Cevadis im ampola pa arma uma pindureta. Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque.',
                  style: TextStyle(color: Colors.grey[700], fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'Minhas informações estão seguras?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  'Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est. Si num tem leite então bota uma pinga aí cumpadi! Cevadis im ampola pa arma uma pindureta. Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque.',
                  style: TextStyle(color: Colors.grey[700], fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'O que é o VacinApp?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  'Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est. Si num tem leite então bota uma pinga aí cumpadi! Cevadis im ampola pa arma uma pindureta. Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque.',
                  style: TextStyle(color: Colors.grey[700], fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'O que é o VacinApp?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  'Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est. Si num tem leite então bota uma pinga aí cumpadi! Cevadis im ampola pa arma uma pindureta. Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque.',
                  style: TextStyle(color: Colors.grey[700], fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  'O que é o VacinApp?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  'Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est. Si num tem leite então bota uma pinga aí cumpadi! Cevadis im ampola pa arma uma pindureta. Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque.',
                  style: TextStyle(color: Colors.grey[700], fontSize: 15),
                ),
              ),
            ],
          ),
        ));
  }
}
