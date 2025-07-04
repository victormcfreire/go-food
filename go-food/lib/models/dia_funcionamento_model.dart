import 'package:json_annotation/json_annotation.dart';

part 'dia_funcionamento_model.g.dart';

@JsonSerializable()
class DiaFuncionamento {
  String diaSemana;
  double horarioAbertura;
  double horarioEncerramento;

  DiaFuncionamento({
    required this.diaSemana,
    required this.horarioAbertura,
    required this.horarioEncerramento,
  });

  factory DiaFuncionamento.fromJson(Map<String, dynamic> json) =>
      _$DiaFuncionamentoFromJson(json);

  Map<String, dynamic> toJson() => _$DiaFuncionamentoToJson(this);
}
