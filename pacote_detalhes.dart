import 'package:astroapp/domain/questoes.dart';
import 'package:flutter/material.dart';

class PacoteDetalhes extends StatefulWidget {
  final Questoes questoes;

  const PacoteDetalhes({
    Key? key,
    required this.questoes,
  }) : super(key: key);

  @override
  _PacoteDetalhesState createState() => _PacoteDetalhesState();
}

class _PacoteDetalhesState extends State<PacoteDetalhes> {

  Questoes get questao => widget.questoes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(questao.imagem),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  questao.titulo,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  questao.alternativa1,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  questao.alternativa2,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  questao.alternativa3,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  questao.alternativa4,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  questao.alternativa5,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}