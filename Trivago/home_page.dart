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
      //backgroundColor: Color.fromRGBO(48, 56, 98, 100),

      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
            color: Color.fromRGBO(54, 48, 98, 100),
            border: Border.all(),
              ),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text('Melhores férias com o ex:',
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                        ),

                        const Text('Trivago',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(233, 213, 218, 100),
                            ),
                          onPressed: () {},
                          child:
                          const Text('Hehe boy!', style: TextStyle(
                            color: Color.fromRGBO(54, 48, 98, 100),
                            fontSize: 15,
                          ),
                          ),
                        ),

                      ],

                    ),
                ),

                const SizedBox(width: 24),
                const Placeholder(
                  fallbackHeight: 150,
                  fallbackWidth: 100,
                  color: Colors.white,
                ),

              ],
            )

          ),
        ],
      ),
    );
  }
}
