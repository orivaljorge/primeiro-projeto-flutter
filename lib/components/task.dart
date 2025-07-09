
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/difficulty.dart';


class Task extends StatefulWidget {
  final String name;
  final String picture;
  final int difficulty;

  const Task(this.name, this.picture, this.difficulty, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

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
                        child: widget.picture.startsWith('http')
                            ? Image.network(widget.picture, fit: BoxFit.cover)
                            : Image.asset(widget.picture, fit: BoxFit.cover),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(fontSize: 30),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Difficulty(difficultyLevel: widget.difficulty),
                        ],
                      ),
                      SizedBox(
                        height: 58,
                        width: 64,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              level++;
                            });
                            // print(level);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            // cor de fundo do botão
                            foregroundColor:
                            Colors.white, // cor do ícone ou texto
                          ),
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
                      child: SizedBox(
                        width: 250,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value:
                          (widget.difficulty > 0)
                              ? (level / widget.difficulty) / 10
                              : 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Nivel: $level',
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