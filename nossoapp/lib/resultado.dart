import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  Resultado( this.pontuacao, this.quandoReiniciarQuestionario);
  final int pontuacao;
  final void Function()? quandoReiniciarQuestionario;

  String? get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Voçê é bom';
    } else if (pontuacao < 16) {
      return 'Imprecionante ';
    } else {
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado!,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(onPressed: quandoReiniciarQuestionario, child: Text('Reiniciar?',
        style: TextStyle(fontSize: 18),))
      ],
    );
  }
}
