import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo de Row'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Adicione sua ação aqui
                },
                child: Text('Botão 1'),
              ),
              SizedBox(width: 10), // Espaçamento entre os botões
              ElevatedButton(
                onPressed: () {
                  // Adicione sua ação aqui
                },
                child: Text('Botão 2'),
              ),
              SizedBox(width: 10), // Espaçamento entre os botões
              ElevatedButton(
                onPressed: () {
                  // Adicione sua ação aqui
                },
                child: Text('Botão 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
