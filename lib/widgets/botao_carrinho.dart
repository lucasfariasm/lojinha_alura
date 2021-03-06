import 'package:flutter/material.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/widgets/indicador_botao_carrinho.dart';

class BotaoCarrinho extends StatefulWidget {
  const BotaoCarrinho({Key? key}) : super(key: key);

  @override
  State<BotaoCarrinho> createState() => _BotaoCarrinhoState();
}

class _BotaoCarrinhoState extends State<BotaoCarrinho> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho').then((value) => setState((){}));
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
        ),
        alignment: Alignment.centerRight,
        height: 40,
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: _visibilidadeIndicadorCarrinho(),
      ),
    );
  }

  _visibilidadeIndicadorCarrinho(){
    if(Inicio.itensCarrinho.isNotEmpty) {
      return Stack(
        children: const [
          Image(
            height: 30,
            image: AssetImage('utilidades/assets/icones/carrinho.png'),
          ),
          IndicadorBotaoCarrinho(),
        ],
      );
    }

    return const Image(
      height: 30,
      image: AssetImage('utilidades/assets/icones/carrinho.png'),
    );
  }
}
