import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:go_food/models/item_pedido_model.dart';

part 'pedido_model.g.dart';

List<Pedido> pedidoFromJson(String str) =>
    List<Pedido>.from(json.decode(str).map((x) => Pedido.fromJson(x)));

String pedidoToJson(List<Pedido> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class Pedido {
  final String? id;
  final String mesa;
  final double total;
  final String status;
  final List<ItemPedido> itensPedido;

  Pedido({
    this.id,
    required this.mesa,
    required this.total,
    required this.status,
    required this.itensPedido,
  });

  factory Pedido.fromJson(Map<String, dynamic> json) => _$PedidoFromJson(json);

  Map<String, dynamic> toJson() => _$PedidoToJson(this);
}
