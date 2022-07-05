import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('HOTEL? TRIVAGO'),
        backgroundColor: Color(0xFF10397B),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.black,
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
                        'CONFIRA O MELHOR DESTINO DO FUTEBOL ALAGOANO!',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'EU QUERO',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFF0000)),
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
          SizedBox(height: 16),
          buildCardPacoteArapiraca(
            img: 'https://cdn-wp.cadena.com.br/nn1/uploads/2020/12/11181735/Estadio.jpg',
            title: 'Campo do ASA',
            transporte: 'Van do Donizete',
            horario: '16h',
            precoA: 12000,
            precoAt: 3200,
            parcelas: 10,
          ),

          buildCardPacoteArapiraca(
            img: 'https://cdn.folhape.com.br/upload/dn_arquivo/2019/09/reipele.jpg',
            title: 'Salão de Festas(Rei Pelé)',
            transporte: 'Van do Donizete',
            horario: '18h',
            precoA: 15000,
            precoAt: 3500,
            parcelas: 40,
          ),



    ],
      ),
    );




  }
  buildCardPacoteArapiraca({
      required String img,
      required String title,
      required String transporte,
      required String horario,
      required double precoA,
      required double precoAt,
      required int parcelas,
}) {
    return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
          child: Image.network(img),
        ),
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
            title,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
    ),
              ),
            Text(
              transporte,
              style: TextStyle(color: Colors.grey[700]),
            ),
          const SizedBox(width: 4),
          Row(
            children: [
              Icon(
            Icons.wb_sunny_outlined,
            color: Colors.grey[700],
          ),
          Text(
            '2h',
            style: TextStyle(color: Colors.grey[700]),
          ),
          const SizedBox(width: 4),
              Icon(
                Icons.person_outline,
                color: Colors.grey[700],
              ),
              const SizedBox(width: 4),
              Text(
                '$horario Da tarde',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
      const SizedBox(height: 8),
      Text(
        'A partir de R\$ $precoA',
        style: TextStyle(color: Colors.grey[700]),
      ),
      Row(
        children: [
          Text(
            'R\$ $precoAt',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFD6C00),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            'Refrigerante na ida em até ${parcelas}x',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Text(
        'Cancelamento Uma ova!',
        style: TextStyle(color: Colors.green[800]),
      ),
          ],
          ),
    ),
    ],
    ),
    );
}
}

