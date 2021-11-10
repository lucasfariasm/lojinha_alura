class Movel {
  late String titulo;
  late String foto;
  late String descricao;
  late int preco;

  Movel({
    required this.titulo,
    required this.foto,
    required this.descricao,
    required this.preco
  });

  Movel.fromJson(Map<String,dynamic> json){
    titulo = json['titulo'];
    foto = json['foto'];
    descricao = json['descricao'];
    preco = json['preco'];
  }
}