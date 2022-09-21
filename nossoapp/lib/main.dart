
import 'package:flutter/material.dart';
import 'package:nossoapp/questionario.dart';

import 'resultado.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntasSelecionada = 0;
  var _pontuacaoTotal = 0;

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntasSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntasSelecionada < _perguntas.length;
  }

  final _perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'Resposta': [
        {'texto': 'preto', 'nota': 10},
        {'texto': 'vermelho', 'nota': 5},
        {'texto': 'verde', 'nota': 3},
        {'texto': 'branco', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorita?',
      'Resposta': [
        {'texto': 'coelho', 'nota': 10},
        {'texto': 'cobra', 'nota': 5},
        {'texto': 'elefante', 'nota': 3},
        {'texto': 'leão', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu intrutor favorita?',
      'Resposta': [
        {'texto': 'Eudes', 'nota': 10},
        {'texto': 'Maria', 'nota': 5},
        {'texto': 'João', 'nota': 3},
        {'texto': 'Pedro', 'nota': 1},
      ],
    },
  ];

  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Perguntas'),
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntasSelecionada: _perguntasSelecionada,
                quandoResponder: _responder,
              )
            :  Resultado(pontuacao: _pontuacaoTotal, ),
    ));
  }
}