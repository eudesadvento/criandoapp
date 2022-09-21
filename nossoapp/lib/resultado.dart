import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  Resultado({required this.pontuacao});
  final int pontuacao;

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
    return Center(
        child: Text(
          fraseResultado!,
          style: TextStyle(fontSize: 28),
        ),
      );
    
    
  }
}