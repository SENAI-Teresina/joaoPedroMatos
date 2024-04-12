import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
 }
}

class HomePage extends StatelessWidget {
  bool showBalance = true; @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
 title: Row(
    children: [
      SizedBox(
        width: 50, // Ajuste a largura conforme necessário
        height: 50, // Ajuste a altura conforme necessário
        child: Image.asset('assets/image2-removebg-preview.png'), // Substitua pelo caminho do seu logo
      ),
      Text('Banco do Brasil'),
    ],
 ),
 actions: [
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {},
    ),
 ],
),

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 'Saldo: R\$ 10.000,00',
                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                 children: [
                    TextButton(
                      child: Text('Ver extrato'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('Últimas transações'),
                      onPressed: () {},
                    ),
                 ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
ElevatedButton(
  onPressed: () {
    // Navegar para a página de transferência quando o botão for pressionado
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TransferPage()),
    );
  },
  child: Column(
    children: [
      Icon(Icons.pix),
      Text('Transferir'),
    ],
  ),
),
                ElevatedButton(
                 onPressed: () {},
                 child: Column(
                    children: [
                      Icon(Icons.add),
                      Text('Depositar'),
                    ],
                 ),
                ),
                ElevatedButton(
                 onPressed: () {},
                 child: Column(
                    children: [
                      Icon(Icons.credit_card),
                      Text('Cartões'),
                    ],
                 ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Movimentações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pagamentos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mais',
          ),
        ],
      ),
    );
 }
}

class TransferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferir'),
      ),
      body: Center(
        child: Text('Página de Transferência'),
      ),
    );
  }
}