
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
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              1,
            ),
            Task(
              'Jogar',
              'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg',
              0,
            ),
            Task(
              'Meditar',
              'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
              4,
            ),
            Task(
              'Andar de bicicleta',
              'https://images.pexels.com/photos/161172/cycling-bike-trail-sport-161172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              5,
            ),
            Task(
              'Ler',
              'assets/images/livro.jpg', // caminho local da imagem
              2,
            ),
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
