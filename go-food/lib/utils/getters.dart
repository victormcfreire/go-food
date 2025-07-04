import 'package:flutter/material.dart';
import 'package:go_food/models/pedido_model.dart';
import 'package:go_food/models/produto_model.dart';

geraCategoriasKeys(List<dynamic> listaCategorias) {
  List<GlobalKey> tempArray = [];
  for (int i = 0; i < listaCategorias.length; i++) {
    tempArray.add(GlobalKey());
  }
  return tempArray;
}

List<Produto> getItemsPedido(Pedido pedido) {
  List<Produto> produtosPedido = [];
  for (var i = 0; i < pedido.itensPedido.length; i++) {
    produtosPedido.add(pedido.itensPedido[i].produto);
  }
  return produtosPedido;
}
