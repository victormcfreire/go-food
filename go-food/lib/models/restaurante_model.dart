import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:go_food/models/dia_funcionamento_model.dart';
import 'package:go_food/models/endereco_model.dart';
import 'package:go_food/models/produto_grupo_model.dart';

part 'restaurante_model.g.dart';

Restaurante restauranteModelFromJson(String str) =>
    json.decode(str).map((x) => Restaurante.fromJson(x));

String restauranteModelToJson(Restaurante data) => json.encode(data);

@JsonSerializable()
class Restaurante {
  int id;
  String nome;
  String imagemBanner;
  String imagemIcone;
  double taxaEntrega;
  double tempoEntrega;
  Endereco endereco;
  List<String> tags;
  List<ProdutoGrupo> gruposProdutos;
  List<DiaFuncionamento> horarioFuncionamento;

  Restaurante({
    required this.id,
    required this.nome,
    required this.imagemBanner,
    required this.imagemIcone,
    required this.taxaEntrega,
    required this.tempoEntrega,
    required this.endereco,
    required this.tags,
    required this.gruposProdutos,
    required this.horarioFuncionamento,
  });

  factory Restaurante.fromJson(Map<String, dynamic> json) =>
      _$RestauranteFromJson(json);

  Map<String, dynamic> toJson() => _$RestauranteToJson(this);
}
