
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

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
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 2000),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Task(
              'Aprender Flutter',
              'assets/images/aprender.png',
              1,
            ),
            Task(
              'Jogar',
              'assets/images/jogar.jpg',
              2,
            ),
            Task(
              'Meditar',
              'assets/images/meditar.jpeg',
              4,
            ),
            Task(
              'Andar de bicicleta',
              'assets/images/bike.jpeg',
              5,
            ),
            Task(
              'Ler',
              'assets/images/livro.jpg', // caminho local da imagem
              2,
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          opacidade = !opacidade;
        });
      },
        backgroundColor: Colors.blue[100],
        child: Icon(Icons.remove_red_eye, color: Colors.blue,),
      ),
    );
  }
}
