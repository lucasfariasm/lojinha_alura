import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/appbar_customizada.dart';
import 'package:lojinha_alura/widgets/card_detalhes.dart';

class Detalhes extends StatefulWidget {
  const Detalhes({Key? key, required this.movel}) : super(key: key);

  final Movel movel;

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('utilidades/assets/imagens/${widget.movel.foto}'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(
          titulo: '',
          ehPaginaCarrinho: false,
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.all(16),
            height: 245,
            child: CardDetalhes(
              movel: widget.movel,
              atualizaPagina: atualiza,
            ),
          ),
        ),
      ),
    );
  }
  atualiza(){
    setState(() {});
  }
}
