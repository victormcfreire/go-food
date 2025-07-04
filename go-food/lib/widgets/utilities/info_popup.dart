import 'package:flutter/material.dart';
import 'package:go_food/models/restaurante_model.dart';
import 'package:go_food/utils/formatacoes.dart';
import 'package:go_food/widgets/utilities/divisor.dart';

class InfoPopUp extends StatelessWidget {
  const InfoPopUp({
    Key? key,
    required this.restaurante,
  }) : super(key: key);

  final Restaurante restaurante;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.access_time_filled,
                  color: Colors.grey[400],
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'Horário de funcionamento',
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(restaurante.horarioFuncionamento.length,
                    (index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Text(
                              '${restaurante.horarioFuncionamento[index].diaSemana.toCapitalized()}: '),
                          Text(
                            formataHorario(restaurante
                                    .horarioFuncionamento[index]
                                    .horarioAbertura)
                                .toString(),
                          ),
                          const Text(' às '),
                          Text(
                            formataHorario(restaurante
                                    .horarioFuncionamento[index]
                                    .horarioEncerramento)
                                .toString(),
                          ),
                        ],
                      ),
                      const Divisor(espacamentoVertical: 5)
                    ],
                  );
                }),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey[400],
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text('Endereço', style: TextStyle(color: Colors.grey[400])),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  Text('${restaurante.endereco.rua}, '),
                  Text('${restaurante.endereco.numero}, '),
                  Text('${restaurante.endereco.cidade}, '),
                  Text(restaurante.endereco.estado),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
