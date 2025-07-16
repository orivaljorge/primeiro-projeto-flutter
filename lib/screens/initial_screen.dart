import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

import 'form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          'Tarefas',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Task('Aprender Flutter', 'assets/images/aprender.png', 1),
          Task('Jogar', 'assets/images/jogar.jpg', 2),
          Task('Meditar', 'assets/images/meditar.jpeg', 4),
          Task('Andar de bicicleta', 'assets/images/bike.jpeg', 5),
          Task(
            'Ler',
            'assets/images/livro.jpg', // caminho local da imagem
            2,
          ),
          SizedBox(height: 80),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormScreen()),
          );
        },
        backgroundColor: Colors.blue[100],
        child: Icon(Icons.add, color: Colors.blue),
      ),
    );
  }
}
