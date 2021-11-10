import 'package:flutter/material.dart';

class TextoDetalhes extends StatelessWidget {
  const TextoDetalhes({Key? key, required this.texto, required this.estilo}) : super(key: key);

  final String texto;
  final TextStyle? estilo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 10,
      ),
      child: _estilizarTexto(texto),
    );
  }

  _estilizarTexto(texto) {
    if (estilo != null) {
      return Text(
        texto,
        style: estilo,
      );
    }
    return Text(texto);
  }
}
