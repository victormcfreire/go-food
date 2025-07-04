// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sacola.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SacolaStore on _SacolaStore, Store {
  late final _$itensPedidoAtom =
      Atom(name: '_SacolaStore.itensPedido', context: context);

  @override
  ObservableList<ItemPedido> get itensPedido {
    _$itensPedidoAtom.reportRead();
    return super.itensPedido;
  }

  @override
  set itensPedido(ObservableList<ItemPedido> value) {
    _$itensPedidoAtom.reportWrite(value, super.itensPedido, () {
      super.itensPedido = value;
    });
  }

  late final _$_SacolaStoreActionController =
      ActionController(name: '_SacolaStore', context: context);

  @override
  int getQuantidade(int index) {
    final _$actionInfo = _$_SacolaStoreActionController.startAction(
        name: '_SacolaStore.getQuantidade');
    try {
      return super.getQuantidade(index);
    } finally {
      _$_SacolaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<ItemPedido> getItensPedidoEnviado() {
    final _$actionInfo = _$_SacolaStoreActionController.startAction(
        name: '_SacolaStore.getItensPedidoEnviado');
    try {
      return super.getItensPedidoEnviado();
    } finally {
      _$_SacolaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void aumentaItem(int index) {
    final _$actionInfo = _$_SacolaStoreActionController.startAction(
        name: '_SacolaStore.aumentaItem');
    try {
      return super.aumentaItem(index);
    } finally {
      _$_SacolaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void diminuiItem(int index) {
    final _$actionInfo = _$_SacolaStoreActionController.startAction(
        name: '_SacolaStore.diminuiItem');
    try {
      return super.diminuiItem(index);
    } finally {
      _$_SacolaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void adicionaItem(ItemPedido element) {
    final _$actionInfo = _$_SacolaStoreActionController.startAction(
        name: '_SacolaStore.adicionaItem');
    try {
      return super.adicionaItem(element);
    } finally {
      _$_SacolaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removerItem(int index) {
    final _$actionInfo = _$_SacolaStoreActionController.startAction(
        name: '_SacolaStore.removerItem');
    try {
      return super.removerItem(index);
    } finally {
      _$_SacolaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void limparPedido() {
    final _$actionInfo = _$_SacolaStoreActionController.startAction(
        name: '_SacolaStore.limparPedido');
    try {
      return super.limparPedido();
    } finally {
      _$_SacolaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  double getSubtotal() {
    final _$actionInfo = _$_SacolaStoreActionController.startAction(
        name: '_SacolaStore.getSubtotal');
    try {
      return super.getSubtotal();
    } finally {
      _$_SacolaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  double getTotal() {
    final _$actionInfo = _$_SacolaStoreActionController.startAction(
        name: '_SacolaStore.getTotal');
    try {
      return super.getTotal();
    } finally {
      _$_SacolaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
itensPedido: ${itensPedido}
    ''';
  }
}
