import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 1.0),
      child: Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              elevation: MaterialStateProperty.all(
                30,
              )),
          onPressed:quandoSelecionado,
          child: Text(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              texto),
        ),
      ),
    );
  }
}