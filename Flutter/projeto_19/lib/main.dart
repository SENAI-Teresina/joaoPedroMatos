import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaListaTarefas(),
    );
  }
}

class Tarefa {
  final String titulo;
  final String descricao;
  bool concluida;

  Tarefa({required this.titulo, required this.descricao, this.concluida = false});
}

class TelaListaTarefas extends StatefulWidget {
  @override
  _TelaListaTarefasState createState() => _TelaListaTarefasState();
}

class _TelaListaTarefasState extends State<TelaListaTarefas> {
  List<Tarefa> _tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
        centerTitle: true, // Centraliza o título
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaAdicionarTarefa(adicionarTarefa)),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _tarefas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Checkbox(
              value: _tarefas[index].concluida,
              onChanged: (value) {
                setState(() {
                  _tarefas[index].concluida = value!;
                });
              },
            ),
            title: Text(
              _tarefas[index].titulo,
              style: TextStyle(
                decoration: _tarefas[index].concluida ? TextDecoration.lineThrough : null,
              ),
            ),
            subtitle: Text(_tarefas[index].descricao),
          );
        },
      ),
    );
  }

  void adicionarTarefa(String titulo, String descricao) {
    setState(() {
      _tarefas.add(Tarefa(titulo: titulo, descricao: descricao));
    });
  }
}

class TelaAdicionarTarefa extends StatelessWidget {
  final Function(String, String) adicionarTarefa;
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();

  TelaAdicionarTarefa(this.adicionarTarefa);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Tarefa'),
        centerTitle: true, // Centraliza o título
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _tituloController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _descricaoController,
              decoration: InputDecoration(
                labelText: 'Descrição',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                adicionarTarefa(_tituloController.text, _descricaoController.text);
                Navigator.pop(context);
              },
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}
