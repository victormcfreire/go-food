import 'package:flutter/material.dart';
import 'package:go_food/store/sacola.store.dart';
import 'package:go_food/theme/colors.dart';
import 'package:go_food/utils/consts.dart';
import 'package:go_food/utils/formatacoes.dart';
import 'package:go_food/widgets/botoes/controle_quantidade_btn.dart';
import 'package:provider/provider.dart';

class CardItemPedido extends StatelessWidget {
  final int index;
  final int? quantidade;
  final dynamic produto;
  final bool? mostrarBotoes;
  final String? observacoes;
  final bool isPedido;
  const CardItemPedido({
    Key? key,
    required this.produto,
    this.mostrarBotoes,
    this.observacoes,
    required this.index,
    this.quantidade,
    required this.isPedido,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SacolaStore>(context);
    return Card(
      margin: const EdgeInsets.all(0),
      semanticContainer: false,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingPadrao),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: paddingPadrao),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          produto.imagem,
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                            return Image.asset(
                              "assets/images/imagem_indisponivel.jpg",
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              produto.nome,
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              observacoes != null ? 'Obs: $observacoes' : '',
                              style: TextStyle(
                                  color: Colors.grey[350],
                                  fontWeight: FontWeight.bold),
                              softWrap: true,
                              maxLines: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          isPedido
                              ? 'R\$ ${formataDouble(produto.preco * quantidade)}'
                              : 'R\$ ${formataDouble(produto.preco * store.itensPedido[index].quantidade)}',
                          style: const TextStyle(color: price),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          produto.desconto != null
                              ? isPedido
                                  ? 'R\$ ${formataDouble(produto.desconto * quantidade)}'
                                  : 'R\$ ${formataDouble(produto.desconto * store.itensPedido[index].quantidade)}'
                              : '',
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            mostrarBotoes!
                ? Column(
                    children: [
                      ControleQuantidadeBtn(
                        store: store,
                        index: index,
                        mostrarBotaoDeletar: true,
                      ),
                    ],
                  )
                : const SizedBox(width: 0),
          ],
        ),
      ),
    );
  }
}
