import 'package:flutter/material.dart';
import 'package:go_food/models/produto_model.dart';
import 'package:go_food/pages/produto_detalhe.dart';
import 'package:go_food/theme/colors.dart';
import 'package:go_food/utils/consts.dart';
import 'package:go_food/utils/formatacoes.dart';
import 'package:go_food/widgets/widgets.dart';

class CardPrato extends StatelessWidget {
  final Produto produto;
  const CardPrato({
    Key? key,
    required this.produto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProdutoDetalhePage(produto: produto),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: alturaCardPrato,
                    width: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          produto.nome,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          produto.descricao,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                          maxLines: 3,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                        Row(
                          children: [
                            Text(
                              'R\$ ${formataDouble(produto.preco)}',
                              style: const TextStyle(
                                  color: price,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              produto.desconto != null
                                  ? 'R\$ ${formataDouble(produto.desconto!)}'
                                  : '',
                              style: const TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  height: alturaCardPrato,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: PlaceholderImagem(
                          imagem: NetworkImage(produto.imagem),
                          height: 75,
                          width: 75,
                          fit: BoxFit.cover,
                          placeholder: const CustomCircularProgressIndicator(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
