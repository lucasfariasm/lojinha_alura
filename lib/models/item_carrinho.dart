import 'package:lojinha_alura/models/movel.dart';

class ItemCarrinho {
  final Movel? movel;
  int quantidade;

  ItemCarrinho({this.movel, required this.quantidade});
}