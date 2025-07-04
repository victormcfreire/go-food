import 'package:mobx/mobx.dart';
import 'package:go_food/models/item_pedido_model.dart';
import 'package:go_food/utils/consts.dart';

part 'sacola.store.g.dart';

// ignore: library_private_types_in_public_api
class SacolaStore = _SacolaStore with _$SacolaStore;

abstract class _SacolaStore with Store {
  @observable
  ObservableList<ItemPedido> itensPedido = ObservableList<ItemPedido>.of([]);

  @action
  int getQuantidade(int index) {
    int quantidade = itensPedido[index].quantidade;
    return quantidade;
  }

  @action
  List<ItemPedido> getItensPedidoEnviado() {
    List<ItemPedido> itensPedidoEnviado = [];

    for (var i = 0; i < itensPedido.length; i++) {
      itensPedidoEnviado.add(itensPedido[i]);
    }

    return itensPedidoEnviado;
  }

  @action
  void aumentaItem(int index) {
    itensPedido[index] = ItemPedido(
        produto: itensPedido[index].produto,
        observacoes: itensPedido[index].observacoes,
        quantidade: itensPedido[index].quantidade + 1);
  }

  @action
  void diminuiItem(int index) {
    itensPedido[index] = ItemPedido(
        produto: itensPedido[index].produto,
        observacoes: itensPedido[index].observacoes,
        quantidade: itensPedido[index].quantidade - 1);
  }

  @action
  void adicionaItem(ItemPedido element) {
    if (itensPedido.any((item) => item.produto.id == element.produto.id)) {
      itensPedido
          .firstWhere((item) => item.produto.id == element.produto.id)
          .quantidade++;
    } else {
      itensPedido.add(element);
    }
  }

  @action
  void removerItem(int index) {
    itensPedido.removeAt(index);
  }

  @action
  void limparPedido() {
    itensPedido.clear();
  }

  @action
  double getSubtotal() {
    double subtotal = 0.00;
    for (var i = 0; i < itensPedido.length; i++) {
      subtotal += itensPedido[i].produto.preco * itensPedido[i].quantidade;
    }
    return subtotal;
  }

  @action
  double getTotal() {
    double total = 0.00;
    double subtotal = getSubtotal();
    total = subtotal + entrega;
    return total;
  }
}
