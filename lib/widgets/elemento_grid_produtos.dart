import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/paginas/detalhes.dart';
import 'package:lojinha_alura/widgets/degrade_elemento_grid_produtos.dart';
import 'package:lojinha_alura/widgets/imagem_elemento_grid_produtos.dart';
import 'package:lojinha_alura/widgets/titulo_elemento_grid_produtos.dart';

class ElementoGridProdutos extends StatefulWidget {
  const ElementoGridProdutos({ Key? key, required this.movel, required this.atualiza }) : super(key: key);

  final Movel movel;
  final Function atualiza;

  @override
  State<ElementoGridProdutos> createState() => _ElementoGridProdutosState();
}

class _ElementoGridProdutosState extends State<ElementoGridProdutos> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => Detalhes(movel: widget.movel),
          )
        ).then((value) => setState((){}));
      },
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12,
            )
          ],
        ),
        margin: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ImagemElementoGridProdutos(
                imagem: widget.movel.foto,
              ),
              const DegradeElementoGridProdutos(),
              TituloElementoGridProdutos(
                titulo: widget.movel.titulo
              )
            ],
          ),
        ),
      ),
    );
  }
}