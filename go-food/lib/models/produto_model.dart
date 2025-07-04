import 'package:json_annotation/json_annotation.dart';

part 'produto_model.g.dart';

@JsonSerializable()
class Produto {
  int id;
  String nome;
  String descricao;
  double preco;
  String imagem;
  double? desconto;

  Produto({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagem,
    this.desconto,
  });

  factory Produto.fromJson(Map<String, dynamic> json) =>
      _$ProdutoFromJson(json);

  Map<String, dynamic> toJson() => _$ProdutoToJson(this);
}
