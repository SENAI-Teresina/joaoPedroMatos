import 'package:flutter/material.dart';

class Product {
  final String nome;
  final double preco;
  final String descricao;

  Product({required this.nome, required this.preco, required this.descricao});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação de Telas',
      initialRoute: '/',
      routes: {
        '/': (context) => InitialScreen(
              products: [
                Product(
                  nome: 'Brahma',
                  preco: 7.00,
                  descricao: '600 ml',
                ),
                Product(
                  nome: 'Skol',
                  preco: 8.00,
                  descricao: '600 ml',
                ),
                Product(
                  nome: 'Heineken',
                  preco: 13.00,
                  descricao: '600 ml',
                ),
              ],
            ),
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}

// Tela inicial que exibe a lista de produtos
class InitialScreen extends StatelessWidget {
  final List<Product> products;

  InitialScreen({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Depósito do Betin'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(products[index].nome),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: products[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// Tela de detalhes que exibe informações detalhadas de um produto selecionado
class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Produto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.nome,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Preço: R\$ ${product.preco.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Descrição: ${product.descricao}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
