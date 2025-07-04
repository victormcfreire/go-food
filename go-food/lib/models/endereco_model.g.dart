// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endereco _$EnderecoFromJson(Map<String, dynamic> json) => Endereco(
      rua: json['rua'] as String,
      numero: json['numero'] as String,
      cidade: json['cidade'] as String,
      estado: json['estado'] as String,
    );

Map<String, dynamic> _$EnderecoToJson(Endereco instance) => <String, dynamic>{
      'rua': instance.rua,
      'numero': instance.numero,
      'cidade': instance.cidade,
      'estado': instance.estado,
    };
