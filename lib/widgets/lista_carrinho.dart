import 'package:flutter/material.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
import 'package:lojinha_alura/models/movel.dart';

class ListaCarrinho extends StatefulWidget {
  const ListaCarrinho({
    Key? key,
    required this.atualiza,
  }) : super(key: key);

  final Function atualiza;

  @override
  State<ListaCarrinho> createState() => _ListaCarrinhoState();
}

class _ListaCarrinhoState extends State<ListaCarrinho> {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carrinho.length,
      itemBuilder: (BuildContext context, int indice) {
        ItemCarrinho item = carrinho[indice];
        Movel? movel = item.movel;
        return Container(
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 10,
          ),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('utilidades/assets/imagens/${movel!.foto}'),
                    height: 92,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 92,
                    margin: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movel.titulo,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('R\$ ${movel.preco}, 00'),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => _aumentarQuantidade(item),
                                  child: Container(
                                    margin: const EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.add,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                Text('${item.quantidade}'),
                                GestureDetector(
                                  onTap: () => _diminuirQuantidade(item),
                                  child: Container(
                                    margin: const EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _aumentarQuantidade(ItemCarrinho item) {
    setState(() {
      item.quantidade++;
      widget.atualiza();
    });
  }

  void _diminuirQuantidade(ItemCarrinho item) {
    if (item.quantidade > 1) {
      setState(() {
        item.quantidade--;
        widget.atualiza();
      });
    } else {
      _removerMovel(item);
    }
  }

  void _removerMovel(ItemCarrinho item) {
    setState(() {
      Inicio.itensCarrinho.remove(item);
      widget.atualiza();
    });
  }
}
