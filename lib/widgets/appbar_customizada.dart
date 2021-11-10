import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget{

  final String titulo;
  final bool ehPaginaCarrinho;

  AppBarCustomizada({Key? key, required this.titulo, required this.ehPaginaCarrinho}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        titulo,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: <Widget>[
        _mudarPaginaCarrinho(ehPaginaCarrinho),
      ],
    );
  }

  _mudarPaginaCarrinho(bool ehPaginaCarrinho){
    if(ehPaginaCarrinho) return Container();
    return const BotaoCarrinho();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}