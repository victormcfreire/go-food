import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_food/models/pedido_model.dart';
import 'package:go_food/pages/home.dart';
import 'package:go_food/store/pedidos.store.dart';
import 'package:go_food/store/sacola.store.dart';
import 'package:go_food/theme/colors.dart';
import 'package:go_food/utils/consts.dart';
import 'package:go_food/utils/formatacoes.dart';
import 'package:go_food/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SacolaPage extends StatelessWidget {
  const SacolaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sacolaStore = Provider.of<SacolaStore>(context);
    final pedidosStore = Provider.of<PedidosStore>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: primary),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: 'Voltar',
        ),
      ),
      body: SingleChildScrollView(
        child: Observer(
          builder: (_) => Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Meu Pedido',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Divisor(),
              sacolaStore.itensPedido.isNotEmpty
                  ? Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        sacolaStore
                            .itensPedido.length, //quantidade de itens no pedido
                        (index) => Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: CardItemPedido(
                            isPedido: false,
                            mostrarBotoes: true,
                            index: index,
                            quantidade:
                                sacolaStore.itensPedido[index].quantidade,
                            produto: sacolaStore.itensPedido[index].produto,
                            observacoes:
                                sacolaStore.itensPedido[index].observacoes,
                          ),
                        ),
                      ),
                    )
                  : SizedBox(
                      height: 100,
                      child: Center(
                        child: Text(
                          'Sacola vazia',
                          style:
                              TextStyle(color: Colors.grey[350], fontSize: 25),
                        ),
                      ),
                    ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: (MediaQuery.of(context).padding.bottom + 18.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Divisor(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: LinhaValor(
                          label: 'Subtotal',
                          labelColor: Colors.grey,
                          textoValor:
                              'R\$ ${formataDouble(sacolaStore.getSubtotal())}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: LinhaValor(
                          label: 'Entrega',
                          labelColor: Colors.grey,
                          textoValor: 'R\$ ${formataDouble(entrega)}'),
                    ),
                    const Divisor(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: LinhaValor(
                        label: 'Total',
                        fontWeight: FontWeight.bold,
                        textoValor:
                            'R\$ ${formataDouble(sacolaStore.getTotal())}',
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: BotaoSecundario(
                        size: Size(MediaQuery.of(context).size.width * 0.9, 35),
                        label: 'Confirmar Pedido',
                        labelColor: Colors.green,
                        onPressed: sacolaStore.itensPedido.isEmpty
                            ? null
                            : () async {
                                await pedidosStore.adicionaPedido(
                                    Pedido(
                                      mesa: '5',
                                      total: sacolaStore.getTotal(),
                                      status: 'PROCESSANDO',
                                      itensPedido: sacolaStore.itensPedido,
                                    ),
                                    context);
                                sacolaStore.limparPedido();
                              },
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: BotaoSecundario(
                        label: '+ Adicionar Item',
                        labelColor: Colors.orange,
                        size: Size(MediaQuery.of(context).size.width * 0.9, 35),
                        onPressed: () {
                          Navigator.popUntil(
                              context, ModalRoute.withName(HomePage.routeName));
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: BotaoSecundario(
                        size: Size(MediaQuery.of(context).size.width * 0.9, 30),
                        label: 'Cancelar Pedido',
                        labelColor: Colors.red,
                        onPressed: sacolaStore.itensPedido.isEmpty
                            ? null
                            : () {
                                sacolaStore.limparPedido();
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
