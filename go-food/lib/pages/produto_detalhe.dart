import 'package:flutter/material.dart';
import 'package:go_food/models/item_pedido_model.dart';
import 'package:go_food/models/produto_model.dart';
import 'package:go_food/store/sacola.store.dart';
import 'package:go_food/theme/colors.dart';
import 'package:go_food/utils/consts.dart';
import 'package:go_food/utils/formatacoes.dart';
import 'package:go_food/widgets/widgets.dart';
import 'package:provider/provider.dart';

class ProdutoDetalhePage extends StatefulWidget {
  final Produto produto;
  const ProdutoDetalhePage({Key? key, required this.produto}) : super(key: key);

  @override
  State<ProdutoDetalhePage> createState() => _ProdutoDetalhePageState();
}

class _ProdutoDetalhePageState extends State<ProdutoDetalhePage> {
  final TextEditingController textController = TextEditingController();
  final textNode = FocusNode();

  @override
  void initState() {
    textController.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SacolaStore>(context);
    return WillPopScope(
      onWillPop: () async {
        if (textNode.hasPrimaryFocus ||
            MediaQuery.of(context).viewInsets.bottom > 0) {
          // Seta o foco para um focusNode fantasma, tirando assim o foco do componente que deseja
          FocusScope.of(context).requestFocus(FocusNode());
          return true;
        } else {
          return false;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: primary),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
            tooltip: 'Voltar',
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: SacolaBtn(),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                widget.produto.imagem,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4, //40%
                fit: BoxFit.fill,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    "assets/images/imagem_indisponivel.jpg",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4, //40%
                    fit: BoxFit.fill,
                  );
                },
              ),
              Container(
                padding: EdgeInsets.fromLTRB(paddingPadrao, paddingPadrao * 2,
                    paddingPadrao, paddingPadrao),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.produto.nome,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'R\$ ${formataDouble(widget.produto.preco)}',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: price),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.produto.desconto != null
                              ? 'R\$ ${formataDouble(widget.produto.desconto!)}'
                              : '',
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                    const Divisor(alturaLinha: 1.0),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: paddingPadrao),
                      child: Text(widget.produto.descricao),
                    ),
                    const Divisor(alturaLinha: 1.0, espacamentoVertical: 15),
                    const SizedBox(height: 5),
                    CustomTextField(
                        textNode: textNode, textController: textController),
                    const SizedBox(height: 8 * 2),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: BotaoPrimario(
                        label: 'Adicionar à Sacola',
                        onPressed: () {
                          store.adicionaItem(ItemPedido(
                              produto: widget.produto,
                              quantidade: 1,
                              observacoes: textController.value.text
                                  .trimLeft()
                                  .trimRight()));
                          textController.clear();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
