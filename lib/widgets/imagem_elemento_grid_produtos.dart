import 'package:flutter/material.dart';

class ImagemElementoGridProdutos extends StatelessWidget {
  const ImagemElementoGridProdutos({ Key? key, required this.imagem }) : super(key: key);

  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image(
        image: AssetImage('utilidades/assets/imagens/$imagem'),
        fit: BoxFit.cover,
      )
    );
  }
}