import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:go_food/models/produto_grupo_model.dart';
import 'package:go_food/widgets/widgets.dart';

class ProdutosCollapse extends StatelessWidget {
  const ProdutosCollapse({
    Key? key,
    required this.categoriasKeys,
    required this.context,
    required this.produtoGrupo,
    required this.index,
  }) : super(key: key);

  final List categoriasKeys;
  final BuildContext context;
  final ProdutoGrupo produtoGrupo;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: categoriasKeys[index],
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ExpandableNotifier(
            initialExpanded: true,
            child: ScrollOnExpand(
              scrollOnExpand: true,
              child: ExpandablePanel(
                header: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    produtoGrupo.nome,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                collapsed: const SizedBox(height: 0),
                expanded: Column(
                  children: List.generate(
                    produtoGrupo.produtos.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: CardPrato(produto: produtoGrupo.produtos[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
