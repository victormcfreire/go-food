import 'package:flutter/material.dart';
import 'package:go_food/theme/colors.dart';
import 'package:go_food/utils/consts.dart';
import 'package:go_food/utils/formatacoes.dart';
import 'package:go_food/widgets/widgets.dart';

import '../../models/restaurante_model.dart';

class RestauranteInfo extends StatelessWidget {
  const RestauranteInfo({
    Key? key,
    required this.restaurante,
  }) : super(key: key);

  final Restaurante restaurante;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingPadrao),
      child: Container(
        height: restauranteInfoAltura,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        restaurante.nome,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                        restaurante.tags.length,
                        (index) => Text(
                              ' ${restaurante.tags[index]} |',
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: paddingPadrao),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.monetization_on_rounded,
                        size: 15,
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'R\$ ${formataDouble(restaurante.taxaEntrega)}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          const Text(
                            'Entrega',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.access_time_filled,
                        size: 15,
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurante.tempoEntrega.toString(),
                            style: const TextStyle(fontSize: 12),
                          ),
                          const Text(
                            'Minutos',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: primary,
                  backgroundImage: NetworkImage(restaurante.imagemIcone),
                ),
                BotaoSecundario(
                  label: 'SOBRE',
                  size: const Size(100, 20),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => InfoPopUp(
                              restaurante: restaurante,
                            ));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
