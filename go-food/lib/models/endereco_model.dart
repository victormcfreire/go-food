import 'package:json_annotation/json_annotation.dart';

part 'endereco_model.g.dart';

@JsonSerializable()
class Endereco {
  String rua;
  String numero;
  String cidade;
  String estado;

  Endereco({
    required this.rua,
    required this.numero,
    required this.cidade,
    required this.estado,
  });

  factory Endereco.fromJson(Map<String, dynamic> json) =>
      _$EnderecoFromJson(json);

  Map<String, dynamic> toJson() => _$EnderecoToJson(this);
}
