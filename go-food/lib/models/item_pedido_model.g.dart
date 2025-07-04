// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_pedido_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemPedido _$ItemPedidoFromJson(Map<String, dynamic> json) => ItemPedido(
      produto: Produto.fromJson(json['produto'] as Map<String, dynamic>),
      quantidade: json['quantidade'] as int,
      observacoes: json['observacoes'] as String?,
    );

Map<String, dynamic> _$ItemPedidoToJson(ItemPedido instance) =>
    <String, dynamic>{
      'produto': instance.produto,
      'quantidade': instance.quantidade,
      'observacoes': instance.observacoes,
    };
