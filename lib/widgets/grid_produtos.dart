import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/elemento_grid_produtos.dart';

class GridProdutos extends StatelessWidget {
  const GridProdutos({Key? key, this.moveis, required this.atualiza})
      : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final moveis;
  final Function atualiza;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int indice) {
        final movel = Movel.fromJson(moveis[indice]);

        return ElementoGridProdutos(
          movel: movel,
          atualiza: atualiza,
        );
      },
    );
  }
}
