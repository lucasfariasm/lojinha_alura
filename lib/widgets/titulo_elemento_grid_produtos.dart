import 'package:flutter/material.dart';

class TituloElementoGridProdutos extends StatelessWidget {
  const TituloElementoGridProdutos({Key? key, required this.titulo})
      : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(
        titulo,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
