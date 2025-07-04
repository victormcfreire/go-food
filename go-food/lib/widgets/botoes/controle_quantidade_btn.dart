import 'package:flutter/material.dart';
import 'package:go_food/store/sacola.store.dart';
import 'package:go_food/utils/consts.dart';

class ControleQuantidadeBtn extends StatelessWidget {
  const ControleQuantidadeBtn({
    Key? key,
    required this.store,
    this.index,
    required this.mostrarBotaoDeletar,
  }) : super(key: key);

  final SacolaStore store;
  final int? index;
  final bool mostrarBotaoDeletar;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: store.getQuantidade(index!) == 1
              ? null
              : () {
                  store.diminuiItem(index!);
                },
          splashRadius: raioSplash,
          icon: const Icon(Icons.remove_circle_outline_rounded),
          padding: const EdgeInsets.only(right: 0),
        ),
        Text(store.getQuantidade(index!).toString()),
        IconButton(
          onPressed: () {
            store.aumentaItem(index!);
          },
          splashRadius: raioSplash,
          icon: const Icon(Icons.add_circle_rounded),
          padding: const EdgeInsets.only(right: 0),
        ),
        mostrarBotaoDeletar
            ? IconButton(
                onPressed: () {
                  store.removerItem(index!);
                },
                splashRadius: raioSplash,
                icon: const Icon(
                  Icons.close_rounded,
                  color: Colors.black,
                ),
                padding: const EdgeInsets.only(right: 0),
              )
            : const SizedBox(width: 0),
      ],
    );
  }
}
