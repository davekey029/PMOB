import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.all(16),
            color: Colors.purple,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Top destinos mais procurados',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Corre que tá rolando muita promoção',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(249, 72, 146, 60),
                        ),
                        onPressed: () {},
                        child:
                        const Text('EU QUERO',
                          style: TextStyle(
                            color: Colors.white,
                          fontSize: 15,
                        ),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(width: 24),
                const Placeholder(
                  fallbackHeight: 150,
                  fallbackWidth: 100,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Card(

            margin: const EdgeInsets.all(1),

            child:
              Padding(
                padding: const EdgeInsets.all(16),
                child:
                  Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Placeholder(fallbackHeight: 150),
                  const SizedBox(height: 8),
                  const Text("Pacote Cancún 2022",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text("Aéreo - Hotel All incluse",
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny_outlined,
                        color: Colors.grey[700],
                      ),
                      const SizedBox(width: 4),
                      const Text("5 Diárias"),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.person_outline,
                        color: Colors.grey[700],
                      ),
                      const SizedBox(width: 4),
                      const Text("1 Pessoa"),

                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text("R\$ 3.749",
                        style: TextStyle(
                          color: Colors.orange[700],
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Taxa Grátis em até 12x",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  )
                  SizedBox(height: 8),

                ],
              ),
            ),


          ),
        ],
      ),
    );
  }
}
