import 'package:astroapp/domain/questoes.dart';
import 'package:astroapp/widget/lista_questoes_card.dart';
import 'package:astroapp/pages/pacote_detalhes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Questoes questao1 = Questoes(
    imagem:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg',
    titulo: 'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda:Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.',
    alternativa1: '4',
    alternativa2: '0',
    alternativa3: '1',
    alternativa4: '2',
    alternativa5: '3',
  );
  Questoes questao2 = Questoes(
    imagem:
    'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
    titulo: 'Pacote Cancún 2022/2023',
    alternativa1: '10',
    alternativa2: '21',
    alternativa3: '3',
    alternativa4: '23',
    alternativa5: '3',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFF10397B),
        title: const Text(
          'AstroAPP',
          style: TextStyle(fontSize: 24),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            CardQuestoes(questoes: questao1),
            CardQuestoes(questoes: questao2),
          ],
        ),
      ),
    );
  }
}