// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Produto _$ProdutoFromJson(Map<String, dynamic> json) => Produto(
      id: json['id'] as int,
      nome: json['nome'] as String,
      descricao: json['descricao'] as String,
      preco: (json['preco'] as num).toDouble(),
      imagem: json['imagem'] as String,
      desconto: (json['desconto'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProdutoToJson(Produto instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'descricao': instance.descricao,
      'preco': instance.preco,
      'imagem': instance.imagem,
      'desconto': instance.desconto,
    };
