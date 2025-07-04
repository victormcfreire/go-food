// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_grupo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProdutoGrupo _$ProdutoGrupoFromJson(Map<String, dynamic> json) => ProdutoGrupo(
      nome: json['nome'] as String,
      produtos: (json['produtos'] as List<dynamic>)
          .map((e) => Produto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProdutoGrupoToJson(ProdutoGrupo instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'produtos': instance.produtos,
    };
