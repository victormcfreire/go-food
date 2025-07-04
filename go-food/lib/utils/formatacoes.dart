String formataDouble(double valor) {
  String valorFormatado = valor.toStringAsFixed(2).replaceAll('.', ',');
  return valorFormatado;
}

String formataHorario(double horario) {
  String horarioFormatado =
      horario.toStringAsFixed(2).padLeft(5, '0').replaceAll('.', ':');
  return horarioFormatado;
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
