import 'package:flutter/material.dart';
import '../widget/pacote_turismo.dart';
import 'detalhes_pacotes.dart';
import '../data/bd.dart';

class HomePage extends StatefulWidget {
 final PacoteTuristico pacoteTuristico;
  const HomePage({
    Key? key,
    required this.pacoteTuristico,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<PacoteTuristico> lista = BD.getPacotesTuristicos();
  int selectedIndex = 0;
  List pages = const [
    HomePage(),
    Center(child: Text('Page Temporaria', style: TextStyle(fontSize: 36))),
    Center(child: Text('Page Temporaria', style: TextStyle(fontSize: 36))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Pesquisar'),
        backgroundColor: const Color(0xFF10397B),
      ),
      body: buildBody(),
    );
  }

  buildListView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: lista.length,
      itemBuilder: (BuildContext context, int index) {
        return CardPacoteTuristico(pacoteTuristico: lista[index]);
      },
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'TOP DESTINOS MAIS BUSCADOS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Corre que ta rolando muita promoção',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const PacoteDetalhes(

                                );
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Eu quero',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFF8FF04)),
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
          const SizedBox(height: 16),
          /*
          const PacoteTuristico(
            imagem:
            'https://r4t2s9v3.stackpathcdn.com/wp-content/uploads/2021/07/cancun-todas-as-dicas.jpg',
            titulo: 'Pacote Cancún 2022/2023',
            transporte: 'Aéreo - Hotel All inclusive',
            numDiarias: 5,
            numPessoas: 2,
            numParcelas: 6,
            precoAntigo: 6819,
            precoAtual: 2819,
          ),
          const PacoteTuristico(
            imagem:
            'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
            titulo: 'Pacote Maragogi 2023',
            transporte: 'Hotel All inclusive',
            numDiarias: 7,
            numPessoas: 3,
            numParcelas: 12,
            precoAntigo: 4819,
            precoAtual: 819,
          ),*/
        ],
      ),
    );
  }
}
