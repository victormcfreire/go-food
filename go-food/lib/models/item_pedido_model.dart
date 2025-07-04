import 'package:json_annotation/json_annotation.dart';
import 'package:go_food/models/produto_model.dart';

part 'item_pedido_model.g.dart';

@JsonSerializable()
class ItemPedido {
  final Produto produto;
  int quantidade;
  final String? observacoes;

  ItemPedido(
      {required this.produto, required this.quantidade, this.observacoes});

  factory ItemPedido.fromJson(Map<String, dynamic> json) =>
      _$ItemPedidoFromJson(json);
  Map<String, dynamic> toJson() => _$ItemPedidoToJson(this);
}
