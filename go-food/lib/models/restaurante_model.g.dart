// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurante_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurante _$RestauranteFromJson(Map<String, dynamic> json) => Restaurante(
      id: json['id'] as int,
      nome: json['nome'] as String,
      imagemBanner: json['imagemBanner'] as String,
      imagemIcone: json['imagemIcone'] as String,
      taxaEntrega: (json['taxaEntrega'] as num).toDouble(),
      tempoEntrega: (json['tempoEntrega'] as num).toDouble(),
      endereco: Endereco.fromJson(json['endereco'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      gruposProdutos: (json['gruposProdutos'] as List<dynamic>)
          .map((e) => ProdutoGrupo.fromJson(e as Map<String, dynamic>))
          .toList(),
      horarioFuncionamento: (json['horarioFuncionamento'] as List<dynamic>)
          .map((e) => DiaFuncionamento.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestauranteToJson(Restaurante instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'imagemBanner': instance.imagemBanner,
      'imagemIcone': instance.imagemIcone,
      'taxaEntrega': instance.taxaEntrega,
      'tempoEntrega': instance.tempoEntrega,
      'endereco': instance.endereco,
      'tags': instance.tags,
      'gruposProdutos': instance.gruposProdutos,
      'horarioFuncionamento': instance.horarioFuncionamento,
    };
