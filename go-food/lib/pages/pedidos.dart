import 'package:flutter/material.dart';
import 'package:go_food/models/pedido_model.dart';
import 'package:go_food/services/pedidos_service.dart';
import 'package:go_food/widgets/widgets.dart';

class PedidosPage extends StatefulWidget {
  const PedidosPage({Key? key}) : super(key: key);

  @override
  State<PedidosPage> createState() => _PedidosPageState();
}

class _PedidosPageState extends State<PedidosPage> {
  final PedidosService pedidosService = PedidosService();
  late Future<List<Pedido>> pedidosFuture;

  @override
  void initState() {
    super.initState();
    pedidosFuture = pedidosService.getPedidos();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: FutureBuilder<List<Pedido>>(
      future: pedidosFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Pedido> pedidos = snapshot.data!;
          return Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      'Meus Pedidos',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              const Divisor(),
              pedidos.isEmpty
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Nenhum Pedido Encontrado',
                          style:
                              TextStyle(color: Colors.grey[350], fontSize: 25),
                        ),
                      ),
                    )
                  : Column(
                      children: List.generate(
                        pedidos.length,
                        (index) =>
                            //Text(pedidos[index].toJson().toString())
                            CardPedido(pedidos: pedidos, indexIterator: index),
                      ),
                    ),
            ],
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        }
        return const Center(child: CustomCircularProgressIndicator());
      },
    ));
  }
}
