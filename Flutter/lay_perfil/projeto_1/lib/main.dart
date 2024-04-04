import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('PERFIL'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: ProfileWidget(),
          ),
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets./palmeiras.png'), // Insira o caminho da imagem de perfil
        ),
        SizedBox(height: 20),
        Text(
          'João Pedro de Oliveira Matos',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          '17 anos, estudante e palmeiras.',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}