// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dia_funcionamento_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiaFuncionamento _$DiaFuncionamentoFromJson(Map<String, dynamic> json) =>
    DiaFuncionamento(
      diaSemana: json['diaSemana'] as String,
      horarioAbertura: (json['horarioAbertura'] as num).toDouble(),
      horarioEncerramento: (json['horarioEncerramento'] as num).toDouble(),
    );

Map<String, dynamic> _$DiaFuncionamentoToJson(DiaFuncionamento instance) =>
    <String, dynamic>{
      'diaSemana': instance.diaSemana,
      'horarioAbertura': instance.horarioAbertura,
      'horarioEncerramento': instance.horarioEncerramento,
    };
