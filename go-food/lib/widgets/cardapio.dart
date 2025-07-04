import 'package:flutter/material.dart';
import 'package:go_food/widgets/widgets.dart';

class Cardapio extends StatelessWidget {
  final List<dynamic> categoriasKeys;
  final List<dynamic> lista;
  const Cardapio({
    Key? key,
    required this.lista,
    required this.categoriasKeys,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        lista.length,
        (index) => Align(
          alignment: Alignment.center,
          child: ProdutosCollapse(
            categoriasKeys: categoriasKeys,
            context: context,
            produtoGrupo: lista[index],
            index: index,
          ),
        ),
      ),
    );
  }
}
