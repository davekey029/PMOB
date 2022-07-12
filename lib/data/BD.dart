import 'package:pmob/widget/pacote_turismo.dart';

class BD{
  static List<PacoteTuristico> lista = [
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
    ),
  ];

  static List<PacoteTuristico> getPacotesTuristicos(){
    return lista;
  }
}