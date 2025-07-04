import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:go_food/models/pedido_model.dart';
import 'package:go_food/utils/consts.dart';
import 'package:go_food/utils/formatacoes.dart';
import 'package:go_food/widgets/widgets.dart';

import '../theme/colors.dart';

class CardPedido extends StatelessWidget {
  const CardPedido({
    Key? key,
    required this.pedidos,
    required this.indexIterator,
  }) : super(key: key);

  final List<Pedido> pedidos;
  final int indexIterator;

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      initialExpanded: true,
      child: ExpandablePanel(
        header: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: LinhaValor(
              label: 'ID Pedido', textoValor: pedidos[indexIterator].id),
        ),
        collapsed: const SizedBox(width: 0),
        expanded: Card(
          child: Column(
            children: [
              LinhaValor(
                  label: 'Mesa', textoValor: pedidos[indexIterator].mesa),
              LinhaValor(
                  label: 'Total do Pedido',
                  textoValorColor: price,
                  textoValor:
                      'R\$ ${formataDouble(pedidos[indexIterator].total)}'),
              LinhaValor(
                  label: 'Situação', textoValor: pedidos[indexIterator].status),
              Column(
                children: List.generate(
                  pedidos[indexIterator].itensPedido.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(top: paddingPadrao),
                    child: CardItemPedido(
                        mostrarBotoes: false,
                        isPedido: true,
                        index: index,
                        quantidade: pedidos[indexIterator]
                            .itensPedido[index]
                            .quantidade,
                        produto:
                            pedidos[indexIterator].itensPedido[index].produto),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
