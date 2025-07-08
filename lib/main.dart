import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(
            'Tarefas',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: Colors.blue,
        ),
        body: AnimatedOpacity(
          opacity: 1,
          duration: Duration(milliseconds: 20000),
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
                'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
                2,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.blue,
              ),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  // color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                        child: Image.network(widget.foto, fit: BoxFit.cover),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              widget.nome,
                              style: TextStyle(fontSize: 30),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color:
                                    widget.dificuldade >= 1
                                        ? Colors.blue
                                        : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color:
                                    widget.dificuldade >= 2
                                        ? Colors.blue
                                        : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color:
                                    widget.dificuldade >= 3
                                        ? Colors.blue
                                        : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color:
                                    widget.dificuldade >= 4
                                        ? Colors.blue
                                        : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color:
                                    widget.dificuldade >= 5
                                        ? Colors.blue
                                        : Colors.blue[100],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 58,
                        width: 64,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                            print(nivel);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_drop_up, size: 20),
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            // cor de fundo do botão
                            foregroundColor:
                                Colors.white, // cor do ícone ou texto
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 250,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value:
                              (widget.dificuldade > 0)
                                  ? (nivel / widget.dificuldade) / 10
                                  : 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Nivel: $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
