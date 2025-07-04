// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pedido _$PedidoFromJson(Map<String, dynamic> json) => Pedido(
      id: json['id'] as String?,
      mesa: json['mesa'] as String,
      total: (json['total'] as num).toDouble(),
      status: json['status'] as String,
      itensPedido: (json['itensPedido'] as List<dynamic>)
          .map((e) => ItemPedido.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PedidoToJson(Pedido instance) => <String, dynamic>{
      'id': instance.id,
      'mesa': instance.mesa,
      'total': instance.total,
      'status': instance.status,
      'itensPedido': instance.itensPedido,
    };
