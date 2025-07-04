import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:go_food/models/pedido_model.dart';
import 'package:go_food/pages/home.dart';
import 'package:go_food/services/pedidos_service.dart';

part 'pedidos.store.g.dart';

// ignore: library_private_types_in_public_api
class PedidosStore = _PedidosStore with _$PedidosStore;

abstract class _PedidosStore with Store {
  @observable
  ObservableList<Pedido> pedidos = ObservableList<Pedido>.of([]);

  @action
  Future adicionaPedido(Pedido element, BuildContext context) async {
    PedidosService().createPedido(element);
    Navigator.popUntil(context, ModalRoute.withName(HomePage.routeName));
  }
}
